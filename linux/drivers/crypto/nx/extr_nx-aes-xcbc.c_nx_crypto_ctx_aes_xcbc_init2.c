
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int mode; } ;
struct TYPE_4__ {TYPE_1__ hdr; } ;
struct nx_csbcpb {TYPE_2__ cpb; } ;
struct nx_crypto_ctx {struct nx_csbcpb* csbcpb; } ;
struct crypto_tfm {int dummy; } ;


 int HCOP_FC_AES ;
 int NX_CPB_SET_KEY_SIZE (struct nx_csbcpb*,int ) ;
 int NX_KS_AES_128 ;
 int NX_MODE_AES_XCBC_MAC ;
 struct nx_crypto_ctx* crypto_tfm_ctx (struct crypto_tfm*) ;
 int nx_crypto_ctx_aes_xcbc_init (struct crypto_tfm*) ;
 int nx_ctx_init (struct nx_crypto_ctx*,int ) ;

__attribute__((used)) static int nx_crypto_ctx_aes_xcbc_init2(struct crypto_tfm *tfm)
{
 struct nx_crypto_ctx *nx_ctx = crypto_tfm_ctx(tfm);
 struct nx_csbcpb *csbcpb = nx_ctx->csbcpb;
 int err;

 err = nx_crypto_ctx_aes_xcbc_init(tfm);
 if (err)
  return err;

 nx_ctx_init(nx_ctx, HCOP_FC_AES);

 NX_CPB_SET_KEY_SIZE(csbcpb, NX_KS_AES_128);
 csbcpb->cpb.hdr.mode = NX_MODE_AES_XCBC_MAC;

 return 0;
}
