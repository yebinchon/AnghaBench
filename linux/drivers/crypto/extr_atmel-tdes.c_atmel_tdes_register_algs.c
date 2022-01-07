
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct atmel_tdes_dev {int dummy; } ;


 int ARRAY_SIZE (int *) ;
 int crypto_register_alg (int *) ;
 int crypto_unregister_alg (int *) ;
 int * tdes_algs ;

__attribute__((used)) static int atmel_tdes_register_algs(struct atmel_tdes_dev *dd)
{
 int err, i, j;

 for (i = 0; i < ARRAY_SIZE(tdes_algs); i++) {
  err = crypto_register_alg(&tdes_algs[i]);
  if (err)
   goto err_tdes_algs;
 }

 return 0;

err_tdes_algs:
 for (j = 0; j < i; j++)
  crypto_unregister_alg(&tdes_algs[j]);

 return err;
}
