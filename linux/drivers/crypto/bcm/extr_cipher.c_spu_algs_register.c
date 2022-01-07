
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct device {int dummy; } ;
struct TYPE_7__ {int aead; int hash; int crypto; } ;
struct TYPE_8__ {int type; int registered; TYPE_1__ alg; } ;


 int ARRAY_SIZE (TYPE_2__*) ;



 int EINVAL ;
 int crypto_unregister_aead (int *) ;
 int crypto_unregister_ahash (int *) ;
 int crypto_unregister_alg (int *) ;
 int dev_err (struct device*,char*,int) ;
 TYPE_2__* driver_algs ;
 int spu_register_ablkcipher (TYPE_2__*) ;
 int spu_register_aead (TYPE_2__*) ;
 int spu_register_ahash (TYPE_2__*) ;

__attribute__((used)) static int spu_algs_register(struct device *dev)
{
 int i, j;
 int err;

 for (i = 0; i < ARRAY_SIZE(driver_algs); i++) {
  switch (driver_algs[i].type) {
  case 130:
   err = spu_register_ablkcipher(&driver_algs[i]);
   break;
  case 128:
   err = spu_register_ahash(&driver_algs[i]);
   break;
  case 129:
   err = spu_register_aead(&driver_algs[i]);
   break;
  default:
   dev_err(dev,
    "iproc-crypto: unknown alg type: %d",
    driver_algs[i].type);
   err = -EINVAL;
  }

  if (err) {
   dev_err(dev, "alg registration failed with error %d\n",
    err);
   goto err_algs;
  }
 }

 return 0;

err_algs:
 for (j = 0; j < i; j++) {

  if (!driver_algs[j].registered)
   continue;
  switch (driver_algs[j].type) {
  case 130:
   crypto_unregister_alg(&driver_algs[j].alg.crypto);
   driver_algs[j].registered = 0;
   break;
  case 128:
   crypto_unregister_ahash(&driver_algs[j].alg.hash);
   driver_algs[j].registered = 0;
   break;
  case 129:
   crypto_unregister_aead(&driver_algs[j].alg.aead);
   driver_algs[j].registered = 0;
   break;
  }
 }
 return err;
}
