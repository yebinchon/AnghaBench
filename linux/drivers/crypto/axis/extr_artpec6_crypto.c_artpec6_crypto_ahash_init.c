
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct crypto_tfm {int dummy; } ;


 int artpec6_crypto_ahash_init_common (struct crypto_tfm*,int *) ;

__attribute__((used)) static int artpec6_crypto_ahash_init(struct crypto_tfm *tfm)
{
 return artpec6_crypto_ahash_init_common(tfm, ((void*)0));
}
