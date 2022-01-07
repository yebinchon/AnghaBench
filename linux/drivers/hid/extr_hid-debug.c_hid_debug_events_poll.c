
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hid_debug_list {TYPE_1__* hdev; int hid_debug_fifo; } ;
struct file {struct hid_debug_list* private_data; } ;
typedef int poll_table ;
typedef int __poll_t ;
struct TYPE_2__ {int debug; int debug_wait; } ;


 int EPOLLERR ;
 int EPOLLHUP ;
 int EPOLLIN ;
 int EPOLLRDNORM ;
 int kfifo_is_empty (int *) ;
 int poll_wait (struct file*,int *,int *) ;

__attribute__((used)) static __poll_t hid_debug_events_poll(struct file *file, poll_table *wait)
{
 struct hid_debug_list *list = file->private_data;

 poll_wait(file, &list->hdev->debug_wait, wait);
 if (!kfifo_is_empty(&list->hid_debug_fifo))
  return EPOLLIN | EPOLLRDNORM;
 if (!list->hdev->debug)
  return EPOLLERR | EPOLLHUP;
 return 0;
}
