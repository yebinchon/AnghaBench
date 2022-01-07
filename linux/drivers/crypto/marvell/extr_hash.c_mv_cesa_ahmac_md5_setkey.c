
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct mv_cesa_hmac_ctx {void** iv; } ;
struct md5_state {int * hash; } ;
struct crypto_ahash {int dummy; } ;


 int ARRAY_SIZE (int *) ;
 void* be32_to_cpu (int ) ;
 int crypto_ahash_tfm (struct crypto_ahash*) ;
 struct mv_cesa_hmac_ctx* crypto_tfm_ctx (int ) ;
 int mv_cesa_ahmac_setkey (char*,int const*,unsigned int,struct md5_state*,struct md5_state*) ;

__attribute__((used)) static int mv_cesa_ahmac_md5_setkey(struct crypto_ahash *tfm, const u8 *key,
        unsigned int keylen)
{
 struct mv_cesa_hmac_ctx *ctx = crypto_tfm_ctx(crypto_ahash_tfm(tfm));
 struct md5_state istate, ostate;
 int ret, i;

 ret = mv_cesa_ahmac_setkey("mv-md5", key, keylen, &istate, &ostate);
 if (ret)
  return ret;

 for (i = 0; i < ARRAY_SIZE(istate.hash); i++)
  ctx->iv[i] = be32_to_cpu(istate.hash[i]);

 for (i = 0; i < ARRAY_SIZE(ostate.hash); i++)
  ctx->iv[i + 8] = be32_to_cpu(ostate.hash[i]);

 return 0;
}
