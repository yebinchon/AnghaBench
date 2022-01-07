
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct rsa_key {int d_sz; int d; int e_sz; int e; int n_sz; int n; } ;
struct crypto_akcipher {int dummy; } ;
struct TYPE_3__ {int n_len; int key_len; int e_len; int d_len; int d_buf; int d_sg; int e_buf; int e_sg; int n_buf; int n_sg; } ;
struct TYPE_4__ {TYPE_1__ rsa; } ;
struct ccp_ctx {TYPE_2__ u; } ;
typedef int raw_key ;


 int EINVAL ;
 struct ccp_ctx* akcipher_tfm_ctx (struct crypto_akcipher*) ;
 scalar_t__ ccp_check_key_length (int) ;
 int ccp_copy_and_save_keypart (int *,int*,int ,int ) ;
 int ccp_rsa_free_key_bufs (struct ccp_ctx*) ;
 int memset (struct rsa_key*,int ,int) ;
 int rsa_parse_priv_key (struct rsa_key*,void const*,unsigned int) ;
 int rsa_parse_pub_key (struct rsa_key*,void const*,unsigned int) ;
 int sg_init_one (int *,int ,int) ;

__attribute__((used)) static int ccp_rsa_setkey(struct crypto_akcipher *tfm, const void *key,
     unsigned int keylen, bool private)
{
 struct ccp_ctx *ctx = akcipher_tfm_ctx(tfm);
 struct rsa_key raw_key;
 int ret;

 ccp_rsa_free_key_bufs(ctx);
 memset(&raw_key, 0, sizeof(raw_key));


 if (private)
  ret = rsa_parse_priv_key(&raw_key, key, keylen);
 else
  ret = rsa_parse_pub_key(&raw_key, key, keylen);
 if (ret)
  goto n_key;

 ret = ccp_copy_and_save_keypart(&ctx->u.rsa.n_buf, &ctx->u.rsa.n_len,
     raw_key.n, raw_key.n_sz);
 if (ret)
  goto key_err;
 sg_init_one(&ctx->u.rsa.n_sg, ctx->u.rsa.n_buf, ctx->u.rsa.n_len);

 ctx->u.rsa.key_len = ctx->u.rsa.n_len << 3;
 if (ccp_check_key_length(ctx->u.rsa.key_len)) {
  ret = -EINVAL;
  goto key_err;
 }

 ret = ccp_copy_and_save_keypart(&ctx->u.rsa.e_buf, &ctx->u.rsa.e_len,
     raw_key.e, raw_key.e_sz);
 if (ret)
  goto key_err;
 sg_init_one(&ctx->u.rsa.e_sg, ctx->u.rsa.e_buf, ctx->u.rsa.e_len);

 if (private) {
  ret = ccp_copy_and_save_keypart(&ctx->u.rsa.d_buf,
      &ctx->u.rsa.d_len,
      raw_key.d, raw_key.d_sz);
  if (ret)
   goto key_err;
  sg_init_one(&ctx->u.rsa.d_sg,
       ctx->u.rsa.d_buf, ctx->u.rsa.d_len);
 }

 return 0;

key_err:
 ccp_rsa_free_key_bufs(ctx);

n_key:
 return ret;
}
