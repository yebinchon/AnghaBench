
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct stripe_head {size_t pd_idx; int lru; TYPE_2__* dev; int state; } ;
struct r5l_recovery_ctx {int pos; int meta_page; } ;
struct r5l_payload_flush {int size; int * flush_stripes; } ;
struct TYPE_6__ {int type; } ;
struct r5l_payload_data_parity {int size; TYPE_3__ header; int location; } ;
struct r5l_meta_block {int meta_size; } ;
struct r5l_log {TYPE_1__* rdev; } ;
struct r5conf {int min_nr_stripes; int max_nr_stripes; } ;
struct mddev {struct r5conf* private; } ;
struct list_head {int dummy; } ;
typedef int sector_t ;
typedef int __le64 ;
typedef int __le32 ;
struct TYPE_5__ {int flags; } ;
struct TYPE_4__ {struct mddev* mddev; } ;


 int BLOCK_SECTORS ;
 int EAGAIN ;
 int EINVAL ;
 int ENOMEM ;
 int PAGE_SHIFT ;
 scalar_t__ R5LOG_PAYLOAD_DATA ;
 scalar_t__ R5LOG_PAYLOAD_FLUSH ;
 scalar_t__ R5LOG_PAYLOAD_PARITY ;
 int R5_Wantwrite ;
 int STRIPE_R5C_CACHING ;
 int WARN_ON (scalar_t__) ;
 scalar_t__ le16_to_cpu (int ) ;
 int le32_to_cpu (int ) ;
 int le64_to_cpu (int ) ;
 int list_add_tail (int *,struct list_head*) ;
 int list_del_init (int *) ;
 int list_move_tail (int *,struct list_head*) ;
 int mdname (struct mddev*) ;
 struct r5l_meta_block* page_address (int ) ;
 int pr_debug (char*,int ,int) ;
 int pr_err (char*,int ,...) ;
 struct stripe_head* r5c_recovery_alloc_stripe (struct r5conf*,int ,int) ;
 struct stripe_head* r5c_recovery_lookup_stripe (struct list_head*,int ) ;
 int r5c_recovery_replay_stripes (struct list_head*,struct r5l_recovery_ctx*) ;
 int r5l_recovery_load_data (struct r5l_log*,struct stripe_head*,struct r5l_recovery_ctx*,struct r5l_payload_data_parity*,int ) ;
 int r5l_recovery_load_parity (struct r5l_log*,struct stripe_head*,struct r5l_recovery_ctx*,struct r5l_payload_data_parity*,int ) ;
 int r5l_recovery_replay_one_stripe (struct r5conf*,struct stripe_head*,struct r5l_recovery_ctx*) ;
 int r5l_recovery_reset_stripe (struct stripe_head*) ;
 int r5l_recovery_verify_data_checksum_for_mb (struct r5l_log*,struct r5l_recovery_ctx*) ;
 int r5l_ring_add (struct r5l_log*,int ,int) ;
 int raid5_compute_sector (struct r5conf*,int ,int ,int*,int *) ;
 int raid5_release_stripe (struct stripe_head*) ;
 int raid5_set_cache_size (struct mddev*,int) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static int
r5c_recovery_analyze_meta_block(struct r5l_log *log,
    struct r5l_recovery_ctx *ctx,
    struct list_head *cached_stripe_list)
{
 struct mddev *mddev = log->rdev->mddev;
 struct r5conf *conf = mddev->private;
 struct r5l_meta_block *mb;
 struct r5l_payload_data_parity *payload;
 struct r5l_payload_flush *payload_flush;
 int mb_offset;
 sector_t log_offset;
 sector_t stripe_sect;
 struct stripe_head *sh;
 int ret;






 ret = r5l_recovery_verify_data_checksum_for_mb(log, ctx);
 if (ret == -EINVAL)
  return -EAGAIN;
 else if (ret)
  return ret;

 mb = page_address(ctx->meta_page);
 mb_offset = sizeof(struct r5l_meta_block);
 log_offset = r5l_ring_add(log, ctx->pos, BLOCK_SECTORS);

 while (mb_offset < le32_to_cpu(mb->meta_size)) {
  int dd;

  payload = (void *)mb + mb_offset;
  payload_flush = (void *)mb + mb_offset;

  if (le16_to_cpu(payload->header.type) == R5LOG_PAYLOAD_FLUSH) {
   int i, count;

   count = le32_to_cpu(payload_flush->size) / sizeof(__le64);
   for (i = 0; i < count; ++i) {
    stripe_sect = le64_to_cpu(payload_flush->flush_stripes[i]);
    sh = r5c_recovery_lookup_stripe(cached_stripe_list,
        stripe_sect);
    if (sh) {
     WARN_ON(test_bit(STRIPE_R5C_CACHING, &sh->state));
     r5l_recovery_reset_stripe(sh);
     list_del_init(&sh->lru);
     raid5_release_stripe(sh);
    }
   }

   mb_offset += sizeof(struct r5l_payload_flush) +
    le32_to_cpu(payload_flush->size);
   continue;
  }


  stripe_sect = (le16_to_cpu(payload->header.type) == R5LOG_PAYLOAD_DATA) ?
   raid5_compute_sector(
    conf, le64_to_cpu(payload->location), 0, &dd,
    ((void*)0))
   : le64_to_cpu(payload->location);

  sh = r5c_recovery_lookup_stripe(cached_stripe_list,
      stripe_sect);

  if (!sh) {
   sh = r5c_recovery_alloc_stripe(conf, stripe_sect, 1);




   if (!sh) {
    r5c_recovery_replay_stripes(
     cached_stripe_list, ctx);
    sh = r5c_recovery_alloc_stripe(
     conf, stripe_sect, 1);
   }
   if (!sh) {
    int new_size = conf->min_nr_stripes * 2;
    pr_debug("md/raid:%s: Increasing stripe cache size to %d to recovery data on journal.\n",
     mdname(mddev),
     new_size);
    ret = raid5_set_cache_size(mddev, new_size);
    if (conf->min_nr_stripes <= new_size / 2) {
     pr_err("md/raid:%s: Cannot increase cache size, ret=%d, new_size=%d, min_nr_stripes=%d, max_nr_stripes=%d\n",
      mdname(mddev),
      ret,
      new_size,
      conf->min_nr_stripes,
      conf->max_nr_stripes);
     return -ENOMEM;
    }
    sh = r5c_recovery_alloc_stripe(
     conf, stripe_sect, 0);
   }
   if (!sh) {
    pr_err("md/raid:%s: Cannot get enough stripes due to memory pressure. Recovery failed.\n",
     mdname(mddev));
    return -ENOMEM;
   }
   list_add_tail(&sh->lru, cached_stripe_list);
  }

  if (le16_to_cpu(payload->header.type) == R5LOG_PAYLOAD_DATA) {
   if (!test_bit(STRIPE_R5C_CACHING, &sh->state) &&
       test_bit(R5_Wantwrite, &sh->dev[sh->pd_idx].flags)) {
    r5l_recovery_replay_one_stripe(conf, sh, ctx);
    list_move_tail(&sh->lru, cached_stripe_list);
   }
   r5l_recovery_load_data(log, sh, ctx, payload,
            log_offset);
  } else if (le16_to_cpu(payload->header.type) == R5LOG_PAYLOAD_PARITY)
   r5l_recovery_load_parity(log, sh, ctx, payload,
       log_offset);
  else
   return -EINVAL;

  log_offset = r5l_ring_add(log, log_offset,
       le32_to_cpu(payload->size));

  mb_offset += sizeof(struct r5l_payload_data_parity) +
   sizeof(__le32) *
   (le32_to_cpu(payload->size) >> (PAGE_SHIFT - 9));
 }

 return 0;
}
