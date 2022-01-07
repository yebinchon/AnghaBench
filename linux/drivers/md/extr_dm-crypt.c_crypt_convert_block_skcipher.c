
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct skcipher_request {int dummy; } ;
struct scatterlist {int dummy; } ;
struct dm_crypt_request {int iv_sector; struct scatterlist* sg_out; struct scatterlist* sg_in; struct convert_context* ctx; } ;
struct crypt_config {int sector_size; int sector_shift; int iv_offset; TYPE_1__* iv_gen_ops; int iv_size; int integrity_iv_size; int cipher_flags; } ;
struct convert_context {int cc_sector; int iter_out; int bio_out; int iter_in; int bio_in; } ;
struct bio_vec {int bv_len; int bv_offset; int bv_page; } ;
typedef int __le64 ;
struct TYPE_2__ {int (* generator ) (struct crypt_config*,int *,struct dm_crypt_request*) ;int (* post ) (struct crypt_config*,int *,struct dm_crypt_request*) ;} ;


 int CRYPT_IV_LARGE_SECTORS ;
 int EIO ;
 scalar_t__ WRITE ;
 int bio_advance_iter (int ,int *,int) ;
 scalar_t__ bio_data_dir (int ) ;
 struct bio_vec bio_iter_iovec (int ,int ) ;
 int cpu_to_le64 (int) ;
 int crypto_skcipher_decrypt (struct skcipher_request*) ;
 int crypto_skcipher_encrypt (struct skcipher_request*) ;
 struct dm_crypt_request* dmreq_of_req (struct crypt_config*,struct skcipher_request*) ;
 int * iv_of_dmreq (struct crypt_config*,struct dm_crypt_request*) ;
 int * iv_tag_from_dmreq (struct crypt_config*,struct dm_crypt_request*) ;
 int memcpy (int *,int *,int ) ;
 int * org_iv_of_dmreq (struct crypt_config*,struct dm_crypt_request*) ;
 int * org_sector_of_dmreq (struct crypt_config*,struct dm_crypt_request*) ;
 unsigned int* org_tag_of_dmreq (struct crypt_config*,struct dm_crypt_request*) ;
 int sg_init_table (struct scatterlist*,int) ;
 int sg_set_page (struct scatterlist*,int ,int,int ) ;
 int skcipher_request_set_crypt (struct skcipher_request*,struct scatterlist*,struct scatterlist*,int,int *) ;
 int stub1 (struct crypt_config*,int *,struct dm_crypt_request*) ;
 int stub2 (struct crypt_config*,int *,struct dm_crypt_request*) ;
 scalar_t__ test_bit (int ,int *) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int crypt_convert_block_skcipher(struct crypt_config *cc,
     struct convert_context *ctx,
     struct skcipher_request *req,
     unsigned int tag_offset)
{
 struct bio_vec bv_in = bio_iter_iovec(ctx->bio_in, ctx->iter_in);
 struct bio_vec bv_out = bio_iter_iovec(ctx->bio_out, ctx->iter_out);
 struct scatterlist *sg_in, *sg_out;
 struct dm_crypt_request *dmreq;
 u8 *iv, *org_iv, *tag_iv;
 __le64 *sector;
 int r = 0;


 if (unlikely(bv_in.bv_len & (cc->sector_size - 1)))
  return -EIO;

 dmreq = dmreq_of_req(cc, req);
 dmreq->iv_sector = ctx->cc_sector;
 if (test_bit(CRYPT_IV_LARGE_SECTORS, &cc->cipher_flags))
  dmreq->iv_sector >>= cc->sector_shift;
 dmreq->ctx = ctx;

 *org_tag_of_dmreq(cc, dmreq) = tag_offset;

 iv = iv_of_dmreq(cc, dmreq);
 org_iv = org_iv_of_dmreq(cc, dmreq);
 tag_iv = iv_tag_from_dmreq(cc, dmreq);

 sector = org_sector_of_dmreq(cc, dmreq);
 *sector = cpu_to_le64(ctx->cc_sector - cc->iv_offset);


 sg_in = &dmreq->sg_in[0];
 sg_out = &dmreq->sg_out[0];

 sg_init_table(sg_in, 1);
 sg_set_page(sg_in, bv_in.bv_page, cc->sector_size, bv_in.bv_offset);

 sg_init_table(sg_out, 1);
 sg_set_page(sg_out, bv_out.bv_page, cc->sector_size, bv_out.bv_offset);

 if (cc->iv_gen_ops) {

  if (cc->integrity_iv_size && bio_data_dir(ctx->bio_in) != WRITE) {
   memcpy(org_iv, tag_iv, cc->integrity_iv_size);
  } else {
   r = cc->iv_gen_ops->generator(cc, org_iv, dmreq);
   if (r < 0)
    return r;

   if (cc->integrity_iv_size)
    memcpy(tag_iv, org_iv, cc->integrity_iv_size);
  }

  memcpy(iv, org_iv, cc->iv_size);
 }

 skcipher_request_set_crypt(req, sg_in, sg_out, cc->sector_size, iv);

 if (bio_data_dir(ctx->bio_in) == WRITE)
  r = crypto_skcipher_encrypt(req);
 else
  r = crypto_skcipher_decrypt(req);

 if (!r && cc->iv_gen_ops && cc->iv_gen_ops->post)
  r = cc->iv_gen_ops->post(cc, org_iv, dmreq);

 bio_advance_iter(ctx->bio_in, &ctx->iter_in, cc->sector_size);
 bio_advance_iter(ctx->bio_out, &ctx->iter_out, cc->sector_size);

 return r;
}
