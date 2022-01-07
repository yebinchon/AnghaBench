
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rvt_dev_info {int n_mcast_grps_lock; } ;


 int spin_lock_init (int *) ;

void rvt_driver_mcast_init(struct rvt_dev_info *rdi)
{




 spin_lock_init(&rdi->n_mcast_grps_lock);
}
