
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct hidraw_list {int node; int read_mutex; struct hidraw* hidraw; } ;
struct hidraw {int list_lock; int list; int open; int hid; int exist; } ;
struct file {struct hidraw_list* private_data; } ;


 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int PM_HINT_FULLON ;
 int PM_HINT_NORMAL ;
 int hid_hw_open (int ) ;
 int hid_hw_power (int ,int ) ;
 struct hidraw** hidraw_table ;
 unsigned int iminor (struct inode*) ;
 int kfree (struct hidraw_list*) ;
 struct hidraw_list* kzalloc (int,int ) ;
 int list_add_tail (int *,int *) ;
 int minors_lock ;
 int mutex_init (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int hidraw_open(struct inode *inode, struct file *file)
{
 unsigned int minor = iminor(inode);
 struct hidraw *dev;
 struct hidraw_list *list;
 unsigned long flags;
 int err = 0;

 if (!(list = kzalloc(sizeof(struct hidraw_list), GFP_KERNEL))) {
  err = -ENOMEM;
  goto out;
 }

 mutex_lock(&minors_lock);
 if (!hidraw_table[minor] || !hidraw_table[minor]->exist) {
  err = -ENODEV;
  goto out_unlock;
 }

 dev = hidraw_table[minor];
 if (!dev->open++) {
  err = hid_hw_power(dev->hid, PM_HINT_FULLON);
  if (err < 0) {
   dev->open--;
   goto out_unlock;
  }

  err = hid_hw_open(dev->hid);
  if (err < 0) {
   hid_hw_power(dev->hid, PM_HINT_NORMAL);
   dev->open--;
   goto out_unlock;
  }
 }

 list->hidraw = hidraw_table[minor];
 mutex_init(&list->read_mutex);
 spin_lock_irqsave(&hidraw_table[minor]->list_lock, flags);
 list_add_tail(&list->node, &hidraw_table[minor]->list);
 spin_unlock_irqrestore(&hidraw_table[minor]->list_lock, flags);
 file->private_data = list;
out_unlock:
 mutex_unlock(&minors_lock);
out:
 if (err < 0)
  kfree(list);
 return err;

}
