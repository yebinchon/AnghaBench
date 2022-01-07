
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct adf_accel_dev {int dummy; } ;


 int qat_crypto_free_instances (struct adf_accel_dev*) ;

__attribute__((used)) static int qat_crypto_shutdown(struct adf_accel_dev *accel_dev)
{
 return qat_crypto_free_instances(accel_dev);
}
