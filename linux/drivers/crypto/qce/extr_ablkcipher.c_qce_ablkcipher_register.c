
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qce_device {int dummy; } ;


 int ARRAY_SIZE (int *) ;
 int * ablkcipher_def ;
 int qce_ablkcipher_register_one (int *,struct qce_device*) ;
 int qce_ablkcipher_unregister (struct qce_device*) ;

__attribute__((used)) static int qce_ablkcipher_register(struct qce_device *qce)
{
 int ret, i;

 for (i = 0; i < ARRAY_SIZE(ablkcipher_def); i++) {
  ret = qce_ablkcipher_register_one(&ablkcipher_def[i], qce);
  if (ret)
   goto err;
 }

 return 0;
err:
 qce_ablkcipher_unregister(qce);
 return ret;
}
