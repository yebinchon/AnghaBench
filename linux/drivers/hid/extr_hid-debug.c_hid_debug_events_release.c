
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int dummy; } ;
struct hid_debug_list {int hid_debug_fifo; TYPE_1__* hdev; int node; } ;
struct file {struct hid_debug_list* private_data; } ;
struct TYPE_2__ {int debug_list_lock; } ;


 int kfifo_free (int *) ;
 int kfree (struct hid_debug_list*) ;
 int list_del (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int hid_debug_events_release(struct inode *inode, struct file *file)
{
 struct hid_debug_list *list = file->private_data;
 unsigned long flags;

 spin_lock_irqsave(&list->hdev->debug_list_lock, flags);
 list_del(&list->node);
 spin_unlock_irqrestore(&list->hdev->debug_list_lock, flags);
 kfifo_free(&list->hid_debug_fifo);
 kfree(list);

 return 0;
}
