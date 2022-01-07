
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint64_t ;
typedef int u8 ;
struct dm_crypt_request {int iv_sector; int * sg_out; int * sg_in; struct convert_context* ctx; } ;
struct crypt_config {scalar_t__ integrity_iv_size; scalar_t__ iv_size; int sector_size; int sector_shift; int iv_offset; int integrity_tag_size; scalar_t__ on_disk_tag_size; TYPE_1__* iv_gen_ops; int cipher_flags; } ;
struct convert_context {int cc_sector; int iter_out; int bio_out; int iter_in; int bio_in; } ;
struct bio_vec {int bv_len; int bv_offset; int bv_page; } ;
struct aead_request {int dummy; } ;
typedef int __le64 ;
struct TYPE_2__ {int (* generator ) (struct crypt_config*,int *,struct dm_crypt_request*) ;int (* post ) (struct crypt_config*,int *,struct dm_crypt_request*) ;} ;


 int BDEVNAME_SIZE ;
 int BUG_ON (int) ;
 int CRYPT_IV_LARGE_SECTORS ;
 int DMERR_LIMIT (char*,int ,unsigned long long) ;
 int EBADMSG ;
 int EIO ;
 scalar_t__ WRITE ;
 int aead_request_set_ad (struct aead_request*,int) ;
 int aead_request_set_crypt (struct aead_request*,int *,int *,int,int *) ;
 int bio_advance_iter (int ,int *,int) ;
 scalar_t__ bio_data_dir (int ) ;
 int bio_devname (int ,char*) ;
 struct bio_vec bio_iter_iovec (int ,int ) ;
 int cpu_to_le64 (int) ;
 int crypto_aead_decrypt (struct aead_request*) ;
 int crypto_aead_encrypt (struct aead_request*) ;
 struct dm_crypt_request* dmreq_of_req (struct crypt_config*,struct aead_request*) ;
 int * iv_of_dmreq (struct crypt_config*,struct dm_crypt_request*) ;
 int * iv_tag_from_dmreq (struct crypt_config*,struct dm_crypt_request*) ;
 scalar_t__ le64_to_cpu (int ) ;
 int memcpy (int *,int *,int) ;
 int memset (int *,int ,int) ;
 int * org_iv_of_dmreq (struct crypt_config*,struct dm_crypt_request*) ;
 int * org_sector_of_dmreq (struct crypt_config*,struct dm_crypt_request*) ;
 unsigned int* org_tag_of_dmreq (struct crypt_config*,struct dm_crypt_request*) ;
 int sg_init_table (int *,int) ;
 int sg_set_buf (int *,int *,int) ;
 int sg_set_page (int *,int ,int,int ) ;
 int stub1 (struct crypt_config*,int *,struct dm_crypt_request*) ;
 int stub2 (struct crypt_config*,int *,struct dm_crypt_request*) ;
 int * tag_from_dmreq (struct crypt_config*,struct dm_crypt_request*) ;
 scalar_t__ test_bit (int ,int *) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int crypt_convert_block_aead(struct crypt_config *cc,
         struct convert_context *ctx,
         struct aead_request *req,
         unsigned int tag_offset)
{
 struct bio_vec bv_in = bio_iter_iovec(ctx->bio_in, ctx->iter_in);
 struct bio_vec bv_out = bio_iter_iovec(ctx->bio_out, ctx->iter_out);
 struct dm_crypt_request *dmreq;
 u8 *iv, *org_iv, *tag_iv, *tag;
 __le64 *sector;
 int r = 0;

 BUG_ON(cc->integrity_iv_size && cc->integrity_iv_size != cc->iv_size);


 if (unlikely(bv_in.bv_len & (cc->sector_size - 1)))
  return -EIO;

 dmreq = dmreq_of_req(cc, req);
 dmreq->iv_sector = ctx->cc_sector;
 if (test_bit(CRYPT_IV_LARGE_SECTORS, &cc->cipher_flags))
  dmreq->iv_sector >>= cc->sector_shift;
 dmreq->ctx = ctx;

 *org_tag_of_dmreq(cc, dmreq) = tag_offset;

 sector = org_sector_of_dmreq(cc, dmreq);
 *sector = cpu_to_le64(ctx->cc_sector - cc->iv_offset);

 iv = iv_of_dmreq(cc, dmreq);
 org_iv = org_iv_of_dmreq(cc, dmreq);
 tag = tag_from_dmreq(cc, dmreq);
 tag_iv = iv_tag_from_dmreq(cc, dmreq);






 sg_init_table(dmreq->sg_in, 4);
 sg_set_buf(&dmreq->sg_in[0], sector, sizeof(uint64_t));
 sg_set_buf(&dmreq->sg_in[1], org_iv, cc->iv_size);
 sg_set_page(&dmreq->sg_in[2], bv_in.bv_page, cc->sector_size, bv_in.bv_offset);
 sg_set_buf(&dmreq->sg_in[3], tag, cc->integrity_tag_size);

 sg_init_table(dmreq->sg_out, 4);
 sg_set_buf(&dmreq->sg_out[0], sector, sizeof(uint64_t));
 sg_set_buf(&dmreq->sg_out[1], org_iv, cc->iv_size);
 sg_set_page(&dmreq->sg_out[2], bv_out.bv_page, cc->sector_size, bv_out.bv_offset);
 sg_set_buf(&dmreq->sg_out[3], tag, cc->integrity_tag_size);

 if (cc->iv_gen_ops) {

  if (cc->integrity_iv_size && bio_data_dir(ctx->bio_in) != WRITE) {
   memcpy(org_iv, tag_iv, cc->iv_size);
  } else {
   r = cc->iv_gen_ops->generator(cc, org_iv, dmreq);
   if (r < 0)
    return r;

   if (cc->integrity_iv_size)
    memcpy(tag_iv, org_iv, cc->iv_size);
  }

  memcpy(iv, org_iv, cc->iv_size);
 }

 aead_request_set_ad(req, sizeof(uint64_t) + cc->iv_size);
 if (bio_data_dir(ctx->bio_in) == WRITE) {
  aead_request_set_crypt(req, dmreq->sg_in, dmreq->sg_out,
           cc->sector_size, iv);
  r = crypto_aead_encrypt(req);
  if (cc->integrity_tag_size + cc->integrity_iv_size != cc->on_disk_tag_size)
   memset(tag + cc->integrity_tag_size + cc->integrity_iv_size, 0,
          cc->on_disk_tag_size - (cc->integrity_tag_size + cc->integrity_iv_size));
 } else {
  aead_request_set_crypt(req, dmreq->sg_in, dmreq->sg_out,
           cc->sector_size + cc->integrity_tag_size, iv);
  r = crypto_aead_decrypt(req);
 }

 if (r == -EBADMSG) {
  char b[BDEVNAME_SIZE];
  DMERR_LIMIT("%s: INTEGRITY AEAD ERROR, sector %llu", bio_devname(ctx->bio_in, b),
       (unsigned long long)le64_to_cpu(*sector));
 }

 if (!r && cc->iv_gen_ops && cc->iv_gen_ops->post)
  r = cc->iv_gen_ops->post(cc, org_iv, dmreq);

 bio_advance_iter(ctx->bio_in, &ctx->iter_in, cc->sector_size);
 bio_advance_iter(ctx->bio_out, &ctx->iter_out, cc->sector_size);

 return r;
}
