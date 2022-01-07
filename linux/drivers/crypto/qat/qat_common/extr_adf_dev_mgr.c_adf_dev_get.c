
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct adf_accel_dev {int owner; int ref_count; } ;


 int EFAULT ;
 int atomic_add_return (int,int *) ;
 int try_module_get (int ) ;

int adf_dev_get(struct adf_accel_dev *accel_dev)
{
 if (atomic_add_return(1, &accel_dev->ref_count) == 1)
  if (!try_module_get(accel_dev->owner))
   return -EFAULT;
 return 0;
}
