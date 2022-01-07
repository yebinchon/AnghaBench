
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mddev {struct md_cluster_info* cluster_info; } ;
struct md_cluster_info {int suspend_lock; int suspend_hi; int suspend_lo; } ;
typedef int sector_t ;


 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static void resync_info_get(struct mddev *mddev, sector_t *lo, sector_t *hi)
{
 struct md_cluster_info *cinfo = mddev->cluster_info;

 spin_lock_irq(&cinfo->suspend_lock);
 *lo = cinfo->suspend_lo;
 *hi = cinfo->suspend_hi;
 spin_unlock_irq(&cinfo->suspend_lock);
}
