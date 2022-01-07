
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct crypto_tfm {int dummy; } ;


 int nx842_crypto_init (struct crypto_tfm*,int *) ;
 int nx842_powernv_driver ;

__attribute__((used)) static int nx842_powernv_crypto_init(struct crypto_tfm *tfm)
{
 return nx842_crypto_init(tfm, &nx842_powernv_driver);
}
