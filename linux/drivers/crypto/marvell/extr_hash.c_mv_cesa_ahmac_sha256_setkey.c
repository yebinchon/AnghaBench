
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sha256_state {int * state; } ;
struct mv_cesa_hmac_ctx {void** iv; } ;
struct crypto_ahash {int dummy; } ;


 int ARRAY_SIZE (int *) ;
 void* be32_to_cpu (int ) ;
 int crypto_ahash_tfm (struct crypto_ahash*) ;
 struct mv_cesa_hmac_ctx* crypto_tfm_ctx (int ) ;
 int mv_cesa_ahmac_setkey (char*,int const*,unsigned int,struct sha256_state*,struct sha256_state*) ;

__attribute__((used)) static int mv_cesa_ahmac_sha256_setkey(struct crypto_ahash *tfm, const u8 *key,
           unsigned int keylen)
{
 struct mv_cesa_hmac_ctx *ctx = crypto_tfm_ctx(crypto_ahash_tfm(tfm));
 struct sha256_state istate, ostate;
 int ret, i;

 ret = mv_cesa_ahmac_setkey("mv-sha256", key, keylen, &istate, &ostate);
 if (ret)
  return ret;

 for (i = 0; i < ARRAY_SIZE(istate.state); i++)
  ctx->iv[i] = be32_to_cpu(istate.state[i]);

 for (i = 0; i < ARRAY_SIZE(ostate.state); i++)
  ctx->iv[i + 8] = be32_to_cpu(ostate.state[i]);

 return 0;
}
