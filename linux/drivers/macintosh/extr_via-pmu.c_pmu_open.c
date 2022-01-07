
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pmu_private {int list; scalar_t__ backlight_locker; int wait; int lock; scalar_t__ rb_put; scalar_t__ rb_get; } ;
struct inode {int dummy; } ;
struct file {struct pmu_private* private_data; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int all_pmu_pvt ;
 int all_pvt_lock ;
 int init_waitqueue_head (int *) ;
 struct pmu_private* kmalloc (int,int ) ;
 int list_add (int *,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pmu_info_proc_mutex ;
 int spin_lock_init (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int
pmu_open(struct inode *inode, struct file *file)
{
 struct pmu_private *pp;
 unsigned long flags;

 pp = kmalloc(sizeof(struct pmu_private), GFP_KERNEL);
 if (!pp)
  return -ENOMEM;
 pp->rb_get = pp->rb_put = 0;
 spin_lock_init(&pp->lock);
 init_waitqueue_head(&pp->wait);
 mutex_lock(&pmu_info_proc_mutex);
 spin_lock_irqsave(&all_pvt_lock, flags);



 list_add(&pp->list, &all_pmu_pvt);
 spin_unlock_irqrestore(&all_pvt_lock, flags);
 file->private_data = pp;
 mutex_unlock(&pmu_info_proc_mutex);
 return 0;
}
