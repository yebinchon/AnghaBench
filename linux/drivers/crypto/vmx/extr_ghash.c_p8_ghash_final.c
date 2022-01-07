
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct shash_desc {int tfm; } ;
struct p8_ghash_desc_ctx {int bytes; int shash; scalar_t__* buffer; } ;
struct p8_ghash_ctx {int dummy; } ;


 int GHASH_DIGEST_SIZE ;
 int __ghash_block (struct p8_ghash_ctx*,struct p8_ghash_desc_ctx*) ;
 int crypto_shash_tfm (int ) ;
 struct p8_ghash_ctx* crypto_tfm_ctx (int ) ;
 int memcpy (int *,int ,int) ;
 struct p8_ghash_desc_ctx* shash_desc_ctx (struct shash_desc*) ;

__attribute__((used)) static int p8_ghash_final(struct shash_desc *desc, u8 *out)
{
 int i;
 struct p8_ghash_ctx *ctx = crypto_tfm_ctx(crypto_shash_tfm(desc->tfm));
 struct p8_ghash_desc_ctx *dctx = shash_desc_ctx(desc);

 if (dctx->bytes) {
  for (i = dctx->bytes; i < GHASH_DIGEST_SIZE; i++)
   dctx->buffer[i] = 0;
  __ghash_block(ctx, dctx);
  dctx->bytes = 0;
 }
 memcpy(out, dctx->shash, GHASH_DIGEST_SIZE);
 return 0;
}
