
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int dummy; } ;
struct hiddev_list {TYPE_1__* hiddev; int node; } ;
struct file {struct hiddev_list* private_data; } ;
struct TYPE_2__ {int existancelock; int hid; scalar_t__ exist; int open; int list_lock; } ;


 int PM_HINT_NORMAL ;
 int hid_hw_close (int ) ;
 int hid_hw_power (int ,int ) ;
 int kfree (TYPE_1__*) ;
 int list_del (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int vfree (struct hiddev_list*) ;

__attribute__((used)) static int hiddev_release(struct inode * inode, struct file * file)
{
 struct hiddev_list *list = file->private_data;
 unsigned long flags;

 spin_lock_irqsave(&list->hiddev->list_lock, flags);
 list_del(&list->node);
 spin_unlock_irqrestore(&list->hiddev->list_lock, flags);

 mutex_lock(&list->hiddev->existancelock);
 if (!--list->hiddev->open) {
  if (list->hiddev->exist) {
   hid_hw_close(list->hiddev->hid);
   hid_hw_power(list->hiddev->hid, PM_HINT_NORMAL);
  } else {
   mutex_unlock(&list->hiddev->existancelock);
   kfree(list->hiddev);
   vfree(list);
   return 0;
  }
 }

 mutex_unlock(&list->hiddev->existancelock);
 vfree(list);

 return 0;
}
