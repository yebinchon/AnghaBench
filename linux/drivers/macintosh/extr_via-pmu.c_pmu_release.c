
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pmu_private {scalar_t__ backlight_locker; int list; } ;
struct inode {int dummy; } ;
struct file {struct pmu_private* private_data; } ;


 int all_pvt_lock ;
 int kfree (struct pmu_private*) ;
 int list_del (int *) ;
 int pmac_backlight_enable () ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int
pmu_release(struct inode *inode, struct file *file)
{
 struct pmu_private *pp = file->private_data;
 unsigned long flags;

 if (pp) {
  file->private_data = ((void*)0);
  spin_lock_irqsave(&all_pvt_lock, flags);
  list_del(&pp->list);
  spin_unlock_irqrestore(&all_pvt_lock, flags);






  kfree(pp);
 }
 return 0;
}
