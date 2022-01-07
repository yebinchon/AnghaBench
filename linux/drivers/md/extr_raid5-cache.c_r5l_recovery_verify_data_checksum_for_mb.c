
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct r5l_recovery_ctx {int pos; int meta_page; } ;
struct r5l_payload_flush {int size; } ;
struct TYPE_4__ {int type; } ;
struct r5l_payload_data_parity {int size; TYPE_2__ header; int * checksum; } ;
struct r5l_meta_block {int meta_size; } ;
struct r5l_log {TYPE_1__* rdev; } ;
struct r5conf {int max_degraded; } ;
struct page {int dummy; } ;
struct mddev {struct r5conf* private; } ;
typedef int sector_t ;
typedef int __le32 ;
struct TYPE_3__ {struct mddev* mddev; } ;


 int BLOCK_SECTORS ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int PAGE_SHIFT ;
 scalar_t__ R5LOG_PAYLOAD_DATA ;
 scalar_t__ R5LOG_PAYLOAD_FLUSH ;
 scalar_t__ R5LOG_PAYLOAD_PARITY ;
 struct page* alloc_page (int ) ;
 scalar_t__ le16_to_cpu (int ) ;
 int le32_to_cpu (int ) ;
 struct r5l_meta_block* page_address (int ) ;
 int put_page (struct page*) ;
 scalar_t__ r5l_recovery_verify_data_checksum (struct r5l_log*,struct r5l_recovery_ctx*,struct page*,int,int ) ;
 int r5l_ring_add (struct r5l_log*,int,int) ;

__attribute__((used)) static int
r5l_recovery_verify_data_checksum_for_mb(struct r5l_log *log,
      struct r5l_recovery_ctx *ctx)
{
 struct mddev *mddev = log->rdev->mddev;
 struct r5conf *conf = mddev->private;
 struct r5l_meta_block *mb = page_address(ctx->meta_page);
 sector_t mb_offset = sizeof(struct r5l_meta_block);
 sector_t log_offset = r5l_ring_add(log, ctx->pos, BLOCK_SECTORS);
 struct page *page;
 struct r5l_payload_data_parity *payload;
 struct r5l_payload_flush *payload_flush;

 page = alloc_page(GFP_KERNEL);
 if (!page)
  return -ENOMEM;

 while (mb_offset < le32_to_cpu(mb->meta_size)) {
  payload = (void *)mb + mb_offset;
  payload_flush = (void *)mb + mb_offset;

  if (le16_to_cpu(payload->header.type) == R5LOG_PAYLOAD_DATA) {
   if (r5l_recovery_verify_data_checksum(
        log, ctx, page, log_offset,
        payload->checksum[0]) < 0)
    goto mismatch;
  } else if (le16_to_cpu(payload->header.type) == R5LOG_PAYLOAD_PARITY) {
   if (r5l_recovery_verify_data_checksum(
        log, ctx, page, log_offset,
        payload->checksum[0]) < 0)
    goto mismatch;
   if (conf->max_degraded == 2 &&
       r5l_recovery_verify_data_checksum(
        log, ctx, page,
        r5l_ring_add(log, log_offset,
       BLOCK_SECTORS),
        payload->checksum[1]) < 0)
    goto mismatch;
  } else if (le16_to_cpu(payload->header.type) == R5LOG_PAYLOAD_FLUSH) {

  } else
   goto mismatch;

  if (le16_to_cpu(payload->header.type) == R5LOG_PAYLOAD_FLUSH) {
   mb_offset += sizeof(struct r5l_payload_flush) +
    le32_to_cpu(payload_flush->size);
  } else {

   log_offset = r5l_ring_add(log, log_offset,
        le32_to_cpu(payload->size));
   mb_offset += sizeof(struct r5l_payload_data_parity) +
    sizeof(__le32) *
    (le32_to_cpu(payload->size) >> (PAGE_SHIFT - 9));
  }

 }

 put_page(page);
 return 0;

mismatch:
 put_page(page);
 return -EINVAL;
}
