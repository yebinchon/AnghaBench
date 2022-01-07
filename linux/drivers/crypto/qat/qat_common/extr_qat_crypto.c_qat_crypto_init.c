
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct adf_accel_dev {int dummy; } ;


 int EFAULT ;
 scalar_t__ qat_crypto_create_instances (struct adf_accel_dev*) ;

__attribute__((used)) static int qat_crypto_init(struct adf_accel_dev *accel_dev)
{
 if (qat_crypto_create_instances(accel_dev))
  return -EFAULT;

 return 0;
}
