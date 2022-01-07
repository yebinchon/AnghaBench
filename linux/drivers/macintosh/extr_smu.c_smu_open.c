
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smu_private {int list; int wait; int mode; int lock; } ;
struct inode {int dummy; } ;
struct file {struct smu_private* private_data; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int init_waitqueue_head (int *) ;
 struct smu_private* kzalloc (int,int ) ;
 int list_add (int *,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int smu_clist ;
 int smu_clist_lock ;
 int smu_file_commands ;
 int smu_mutex ;
 int spin_lock_init (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int smu_open(struct inode *inode, struct file *file)
{
 struct smu_private *pp;
 unsigned long flags;

 pp = kzalloc(sizeof(struct smu_private), GFP_KERNEL);
 if (pp == 0)
  return -ENOMEM;
 spin_lock_init(&pp->lock);
 pp->mode = smu_file_commands;
 init_waitqueue_head(&pp->wait);

 mutex_lock(&smu_mutex);
 spin_lock_irqsave(&smu_clist_lock, flags);
 list_add(&pp->list, &smu_clist);
 spin_unlock_irqrestore(&smu_clist_lock, flags);
 file->private_data = pp;
 mutex_unlock(&smu_mutex);

 return 0;
}
