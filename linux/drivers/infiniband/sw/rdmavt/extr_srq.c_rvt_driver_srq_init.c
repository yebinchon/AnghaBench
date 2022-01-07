
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rvt_dev_info {scalar_t__ n_srqs_allocated; int n_srqs_lock; } ;


 int spin_lock_init (int *) ;

void rvt_driver_srq_init(struct rvt_dev_info *rdi)
{
 spin_lock_init(&rdi->n_srqs_lock);
 rdi->n_srqs_allocated = 0;
}
