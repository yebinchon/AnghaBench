
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct crypto_skcipher {int dummy; } ;


 int caam_exit_common (int ) ;
 int crypto_skcipher_ctx (struct crypto_skcipher*) ;

__attribute__((used)) static void caam_cra_exit(struct crypto_skcipher *tfm)
{
 caam_exit_common(crypto_skcipher_ctx(tfm));
}
