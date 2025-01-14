
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nx_crypto_ctx {int csbcpb; int * props; int * ap; } ;
struct crypto_tfm {int dummy; } ;


 int HCOP_FC_SHA ;
 int NX_CPB_SET_DIGEST_SIZE (int ,int ) ;
 int NX_DS_SHA512 ;
 size_t NX_PROPS_SHA512 ;
 struct nx_crypto_ctx* crypto_tfm_ctx (struct crypto_tfm*) ;
 int nx_crypto_ctx_sha_init (struct crypto_tfm*) ;
 int nx_ctx_init (struct nx_crypto_ctx*,int ) ;

__attribute__((used)) static int nx_crypto_ctx_sha512_init(struct crypto_tfm *tfm)
{
 struct nx_crypto_ctx *nx_ctx = crypto_tfm_ctx(tfm);
 int err;

 err = nx_crypto_ctx_sha_init(tfm);
 if (err)
  return err;

 nx_ctx_init(nx_ctx, HCOP_FC_SHA);

 nx_ctx->ap = &nx_ctx->props[NX_PROPS_SHA512];

 NX_CPB_SET_DIGEST_SIZE(nx_ctx->csbcpb, NX_DS_SHA512);

 return 0;
}
