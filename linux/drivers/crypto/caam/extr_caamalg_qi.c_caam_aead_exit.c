
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct crypto_aead {int dummy; } ;


 int caam_exit_common (int ) ;
 int crypto_aead_ctx (struct crypto_aead*) ;

__attribute__((used)) static void caam_aead_exit(struct crypto_aead *tfm)
{
 caam_exit_common(crypto_aead_ctx(tfm));
}
