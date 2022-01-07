
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct adf_accel_dev {int ref_count; } ;


 scalar_t__ atomic_read (int *) ;

int adf_dev_in_use(struct adf_accel_dev *accel_dev)
{
 return atomic_read(&accel_dev->ref_count) != 0;
}
