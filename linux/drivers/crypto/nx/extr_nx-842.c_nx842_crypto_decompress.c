
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef scalar_t__ u16 ;
struct nx842_crypto_param {unsigned int iremain; unsigned int oremain; unsigned int ototal; int * out; int * in; } ;
struct nx842_crypto_header_group {int uncompressed_length; int compressed_length; int padding; } ;
struct nx842_crypto_header {int groups; struct nx842_crypto_header_group* group; int ignore; int magic; } ;
struct nx842_crypto_ctx {int lock; struct nx842_crypto_header header; TYPE_1__* driver; } ;
struct nx842_constraints {int dummy; } ;
struct crypto_tfm {int dummy; } ;
struct TYPE_2__ {struct nx842_constraints* constraints; } ;


 int EINVAL ;
 int EOVERFLOW ;
 int NX842_CRYPTO_GROUP_MAX ;
 int NX842_CRYPTO_HEADER_SIZE (int) ;
 scalar_t__ NX842_CRYPTO_MAGIC ;
 scalar_t__ be16_to_cpu (int ) ;
 int check_constraints (struct nx842_constraints*) ;
 int cpu_to_be32 (unsigned int) ;
 struct nx842_crypto_ctx* crypto_tfm_ctx (struct crypto_tfm*) ;
 int decompress (struct nx842_crypto_ctx*,struct nx842_crypto_param*,struct nx842_crypto_header_group*,struct nx842_constraints*,scalar_t__) ;
 int memcpy (struct nx842_crypto_header*,int const*,int) ;
 int pr_debug (char*,unsigned int,unsigned int) ;
 int pr_err (char*,...) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

int nx842_crypto_decompress(struct crypto_tfm *tfm,
       const u8 *src, unsigned int slen,
       u8 *dst, unsigned int *dlen)
{
 struct nx842_crypto_ctx *ctx = crypto_tfm_ctx(tfm);
 struct nx842_crypto_header *hdr;
 struct nx842_crypto_param p;
 struct nx842_constraints c = *ctx->driver->constraints;
 int n, ret, hdr_len;
 u16 ignore = 0;

 check_constraints(&c);

 p.in = (u8 *)src;
 p.iremain = slen;
 p.out = dst;
 p.oremain = *dlen;
 p.ototal = 0;

 *dlen = 0;

 hdr = (struct nx842_crypto_header *)src;

 spin_lock_bh(&ctx->lock);




 if (be16_to_cpu(hdr->magic) != NX842_CRYPTO_MAGIC) {
  struct nx842_crypto_header_group g = {
   .padding = 0,
   .compressed_length = cpu_to_be32(p.iremain),
   .uncompressed_length = cpu_to_be32(p.oremain),
  };

  ret = decompress(ctx, &p, &g, &c, 0);
  if (ret)
   goto unlock;

  goto success;
 }

 if (!hdr->groups) {
  pr_err("header has no groups\n");
  ret = -EINVAL;
  goto unlock;
 }
 if (hdr->groups > NX842_CRYPTO_GROUP_MAX) {
  pr_err("header has too many groups %x, max %x\n",
         hdr->groups, NX842_CRYPTO_GROUP_MAX);
  ret = -EINVAL;
  goto unlock;
 }

 hdr_len = NX842_CRYPTO_HEADER_SIZE(hdr->groups);
 if (hdr_len > slen) {
  ret = -EOVERFLOW;
  goto unlock;
 }

 memcpy(&ctx->header, src, hdr_len);
 hdr = &ctx->header;

 for (n = 0; n < hdr->groups; n++) {

  if (n + 1 == hdr->groups)
   ignore = be16_to_cpu(hdr->ignore);

  ret = decompress(ctx, &p, &hdr->group[n], &c, ignore);
  if (ret)
   goto unlock;
 }

success:
 *dlen = p.ototal;

 pr_debug("decompress total slen %x dlen %x\n", slen, *dlen);

 ret = 0;

unlock:
 spin_unlock_bh(&ctx->lock);

 return ret;
}
