
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qat_crypto_instance {int accel_dev; int refctr; } ;


 int adf_dev_put (int ) ;
 int atomic_dec (int *) ;

void qat_crypto_put_instance(struct qat_crypto_instance *inst)
{
 atomic_dec(&inst->refctr);
 adf_dev_put(inst->accel_dev);
}
