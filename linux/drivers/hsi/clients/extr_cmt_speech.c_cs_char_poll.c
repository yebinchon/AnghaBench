
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct file {struct cs_char* private_data; } ;
struct cs_char {int lock; int dataind_queue; int chardev_queue; } ;
typedef int poll_table ;
typedef int __poll_t ;
struct TYPE_2__ {int wait; } ;


 int EPOLLIN ;
 int EPOLLRDNORM ;
 TYPE_1__ cs_char_data ;
 int list_empty (int *) ;
 int poll_wait (struct file*,int *,int *) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static __poll_t cs_char_poll(struct file *file, poll_table *wait)
{
 struct cs_char *csdata = file->private_data;
 __poll_t ret = 0;

 poll_wait(file, &cs_char_data.wait, wait);
 spin_lock_bh(&csdata->lock);
 if (!list_empty(&csdata->chardev_queue))
  ret = EPOLLIN | EPOLLRDNORM;
 else if (!list_empty(&csdata->dataind_queue))
  ret = EPOLLIN | EPOLLRDNORM;
 spin_unlock_bh(&csdata->lock);

 return ret;
}
