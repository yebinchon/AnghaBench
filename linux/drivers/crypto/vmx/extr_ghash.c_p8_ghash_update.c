
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct shash_desc {int tfm; } ;
struct p8_ghash_desc_ctx {int bytes; scalar_t__ buffer; } ;
struct p8_ghash_ctx {int dummy; } ;


 unsigned int GHASH_DIGEST_SIZE ;
 int __ghash_block (struct p8_ghash_ctx*,struct p8_ghash_desc_ctx*) ;
 int __ghash_blocks (struct p8_ghash_ctx*,struct p8_ghash_desc_ctx*,int const*,unsigned int) ;
 int crypto_shash_tfm (int ) ;
 struct p8_ghash_ctx* crypto_tfm_ctx (int ) ;
 int memcpy (scalar_t__,int const*,unsigned int) ;
 struct p8_ghash_desc_ctx* shash_desc_ctx (struct shash_desc*) ;

__attribute__((used)) static int p8_ghash_update(struct shash_desc *desc,
      const u8 *src, unsigned int srclen)
{
 unsigned int len;
 struct p8_ghash_ctx *ctx = crypto_tfm_ctx(crypto_shash_tfm(desc->tfm));
 struct p8_ghash_desc_ctx *dctx = shash_desc_ctx(desc);

 if (dctx->bytes) {
  if (dctx->bytes + srclen < GHASH_DIGEST_SIZE) {
   memcpy(dctx->buffer + dctx->bytes, src,
    srclen);
   dctx->bytes += srclen;
   return 0;
  }
  memcpy(dctx->buffer + dctx->bytes, src,
   GHASH_DIGEST_SIZE - dctx->bytes);

  __ghash_block(ctx, dctx);

  src += GHASH_DIGEST_SIZE - dctx->bytes;
  srclen -= GHASH_DIGEST_SIZE - dctx->bytes;
  dctx->bytes = 0;
 }
 len = srclen & ~(GHASH_DIGEST_SIZE - 1);
 if (len) {
  __ghash_blocks(ctx, dctx, src, len);
  src += len;
  srclen -= len;
 }
 if (srclen) {
  memcpy(dctx->buffer, src, srclen);
  dctx->bytes = srclen;
 }
 return 0;
}
