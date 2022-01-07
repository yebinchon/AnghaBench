
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EFAULT ;
 int WQ_MEM_RECLAIM ;
 int alloc_workqueue (char*,int ,int ) ;
 int device_reset_wq ;

int adf_init_aer(void)
{
 device_reset_wq = alloc_workqueue("qat_device_reset_wq",
       WQ_MEM_RECLAIM, 0);
 return !device_reset_wq ? -EFAULT : 0;
}
