
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct crypto_ablkcipher {int dummy; } ;
struct TYPE_3__ {unsigned int key_len; int key; int key_sg; int mode; int type; } ;
struct TYPE_4__ {TYPE_1__ des3; } ;
struct ccp_ctx {TYPE_2__ u; } ;
struct ccp_crypto_ablkcipher_alg {int mode; } ;


 int CCP_DES3_TYPE_168 ;
 struct ccp_crypto_ablkcipher_alg* ccp_crypto_ablkcipher_alg (int ) ;
 int crypto_ablkcipher_tfm (struct crypto_ablkcipher*) ;
 struct ccp_ctx* crypto_tfm_ctx (int ) ;
 int memcpy (int ,int const*,unsigned int) ;
 int sg_init_one (int *,int ,unsigned int) ;
 int verify_ablkcipher_des3_key (struct crypto_ablkcipher*,int const*) ;

__attribute__((used)) static int ccp_des3_setkey(struct crypto_ablkcipher *tfm, const u8 *key,
  unsigned int key_len)
{
 struct ccp_ctx *ctx = crypto_tfm_ctx(crypto_ablkcipher_tfm(tfm));
 struct ccp_crypto_ablkcipher_alg *alg =
  ccp_crypto_ablkcipher_alg(crypto_ablkcipher_tfm(tfm));
 int err;

 err = verify_ablkcipher_des3_key(tfm, key);
 if (err)
  return err;




 ctx->u.des3.type = CCP_DES3_TYPE_168;
 ctx->u.des3.mode = alg->mode;
 ctx->u.des3.key_len = key_len;

 memcpy(ctx->u.des3.key, key, key_len);
 sg_init_one(&ctx->u.des3.key_sg, ctx->u.des3.key, key_len);

 return 0;
}
