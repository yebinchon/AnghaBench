
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct crypto_aead {int dummy; } ;


 int crypto_aead_tfm (struct crypto_aead*) ;
 int exit_tfm (int ) ;

__attribute__((used)) static void exit_tfm_aead(struct crypto_aead *tfm)
{
 exit_tfm(crypto_aead_tfm(tfm));
}
