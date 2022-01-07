
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct crypto_tfm {int dummy; } ;


 int NX_FC_AES ;
 int NX_MODE_AES_ECB ;
 int crypto_tfm_ctx (struct crypto_tfm*) ;
 int nx_crypto_ctx_init (int ,int ,int ) ;

int nx_crypto_ctx_aes_ecb_init(struct crypto_tfm *tfm)
{
 return nx_crypto_ctx_init(crypto_tfm_ctx(tfm), NX_FC_AES,
      NX_MODE_AES_ECB);
}
