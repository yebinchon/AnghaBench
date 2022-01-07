
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct adf_accel_dev {int status; } ;


 int ADF_STATUS_STARTED ;
 int test_bit (int ,int *) ;

int adf_dev_started(struct adf_accel_dev *accel_dev)
{
 return test_bit(ADF_STATUS_STARTED, &accel_dev->status);
}
