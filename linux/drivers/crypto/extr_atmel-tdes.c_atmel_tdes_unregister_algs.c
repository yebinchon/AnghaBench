
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct atmel_tdes_dev {int dummy; } ;


 int ARRAY_SIZE (int *) ;
 int crypto_unregister_alg (int *) ;
 int * tdes_algs ;

__attribute__((used)) static void atmel_tdes_unregister_algs(struct atmel_tdes_dev *dd)
{
 int i;

 for (i = 0; i < ARRAY_SIZE(tdes_algs); i++)
  crypto_unregister_alg(&tdes_algs[i]);
}
