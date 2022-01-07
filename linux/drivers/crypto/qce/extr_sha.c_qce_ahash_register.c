
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qce_device {int dummy; } ;


 int ARRAY_SIZE (int *) ;
 int * ahash_def ;
 int qce_ahash_register_one (int *,struct qce_device*) ;
 int qce_ahash_unregister (struct qce_device*) ;

__attribute__((used)) static int qce_ahash_register(struct qce_device *qce)
{
 int ret, i;

 for (i = 0; i < ARRAY_SIZE(ahash_def); i++) {
  ret = qce_ahash_register_one(&ahash_def[i], qce);
  if (ret)
   goto err;
 }

 return 0;
err:
 qce_ahash_unregister(qce);
 return ret;
}
