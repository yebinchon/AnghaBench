
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct adf_accel_dev {int owner; int ref_count; } ;


 scalar_t__ atomic_sub_return (int,int *) ;
 int module_put (int ) ;

void adf_dev_put(struct adf_accel_dev *accel_dev)
{
 if (atomic_sub_return(1, &accel_dev->ref_count) == 0)
  module_put(accel_dev->owner);
}
