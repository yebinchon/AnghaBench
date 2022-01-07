
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct crypto_aead {int dummy; } ;
struct chcr_aead_ctx {int sw_cipher; } ;


 struct chcr_aead_ctx* AEAD_CTX (int ) ;
 int a_ctx (struct crypto_aead*) ;
 int crypto_free_aead (int ) ;

__attribute__((used)) static void chcr_aead_cra_exit(struct crypto_aead *tfm)
{
 struct chcr_aead_ctx *aeadctx = AEAD_CTX(a_ctx(tfm));

 crypto_free_aead(aeadctx->sw_cipher);
}
