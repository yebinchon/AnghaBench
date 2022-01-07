
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mddev {TYPE_1__* pers; struct md_cluster_info* cluster_info; } ;
struct md_cluster_info {int suspend_lock; scalar_t__ suspend_lo; scalar_t__ suspend_hi; } ;
struct TYPE_2__ {int (* quiesce ) (struct mddev*,int) ;} ;


 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int stub1 (struct mddev*,int) ;
 int stub2 (struct mddev*,int) ;

__attribute__((used)) static void remove_suspend_info(struct mddev *mddev, int slot)
{
 struct md_cluster_info *cinfo = mddev->cluster_info;
 mddev->pers->quiesce(mddev, 1);
 spin_lock_irq(&cinfo->suspend_lock);
 cinfo->suspend_hi = 0;
 cinfo->suspend_lo = 0;
 spin_unlock_irq(&cinfo->suspend_lock);
 mddev->pers->quiesce(mddev, 0);
}
