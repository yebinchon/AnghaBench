
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {scalar_t__ i_private; } ;
struct hid_device {int debug_list_lock; int debug_list; } ;
struct hid_debug_list {struct hid_device* hdev; int node; int read_mutex; int hid_debug_fifo; } ;
struct file {struct hid_debug_list* private_data; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int HID_DEBUG_FIFOSIZE ;
 int kfifo_alloc (int *,int ,int ) ;
 int kfree (struct hid_debug_list*) ;
 struct hid_debug_list* kzalloc (int,int ) ;
 int list_add_tail (int *,int *) ;
 int mutex_init (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int hid_debug_events_open(struct inode *inode, struct file *file)
{
 int err = 0;
 struct hid_debug_list *list;
 unsigned long flags;

 if (!(list = kzalloc(sizeof(struct hid_debug_list), GFP_KERNEL))) {
  err = -ENOMEM;
  goto out;
 }

 err = kfifo_alloc(&list->hid_debug_fifo, HID_DEBUG_FIFOSIZE, GFP_KERNEL);
 if (err) {
  kfree(list);
  goto out;
 }
 list->hdev = (struct hid_device *) inode->i_private;
 file->private_data = list;
 mutex_init(&list->read_mutex);

 spin_lock_irqsave(&list->hdev->debug_list_lock, flags);
 list_add_tail(&list->node, &list->hdev->debug_list);
 spin_unlock_irqrestore(&list->hdev->debug_list_lock, flags);

out:
 return err;
}
