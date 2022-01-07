
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rvt_dev_info {int ibdev; int ports; } ;


 int ib_dealloc_device (int *) ;
 int kfree (int ) ;

void rvt_dealloc_device(struct rvt_dev_info *rdi)
{
 kfree(rdi->ports);
 ib_dealloc_device(&rdi->ibdev);
}
