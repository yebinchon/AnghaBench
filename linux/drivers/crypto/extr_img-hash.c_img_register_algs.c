
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct img_hash_dev {int dummy; } ;


 int ARRAY_SIZE (int *) ;
 int crypto_register_ahash (int *) ;
 int crypto_unregister_ahash (int *) ;
 int * img_algs ;

__attribute__((used)) static int img_register_algs(struct img_hash_dev *hdev)
{
 int i, err;

 for (i = 0; i < ARRAY_SIZE(img_algs); i++) {
  err = crypto_register_ahash(&img_algs[i]);
  if (err)
   goto err_reg;
 }
 return 0;

err_reg:
 for (; i--; )
  crypto_unregister_ahash(&img_algs[i]);

 return err;
}
