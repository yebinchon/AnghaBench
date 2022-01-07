
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct adf_accel_dev {int status; } ;


 int ADF_STATUS_RESTARTING ;
 int test_bit (int ,int *) ;

int adf_devmgr_in_reset(struct adf_accel_dev *accel_dev)
{
 return test_bit(ADF_STATUS_RESTARTING, &accel_dev->status);
}
