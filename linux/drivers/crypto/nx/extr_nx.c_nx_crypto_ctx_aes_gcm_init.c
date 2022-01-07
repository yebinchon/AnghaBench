
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nx_gcm_rctx {int dummy; } ;
struct crypto_aead {int dummy; } ;


 int NX_FC_AES ;
 int NX_MODE_AES_GCM ;
 int crypto_aead_ctx (struct crypto_aead*) ;
 int crypto_aead_set_reqsize (struct crypto_aead*,int) ;
 int nx_crypto_ctx_init (int ,int ,int ) ;

int nx_crypto_ctx_aes_gcm_init(struct crypto_aead *tfm)
{
 crypto_aead_set_reqsize(tfm, sizeof(struct nx_gcm_rctx));
 return nx_crypto_ctx_init(crypto_aead_ctx(tfm), NX_FC_AES,
      NX_MODE_AES_GCM);
}
