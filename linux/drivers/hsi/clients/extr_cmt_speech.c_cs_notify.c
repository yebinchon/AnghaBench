
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct list_head {int dummy; } ;
struct char_queue {int list; int msg; } ;
struct TYPE_4__ {int async_queue; int wait; int lock; TYPE_1__* cl; int opened; } ;
struct TYPE_3__ {int device; } ;


 int GFP_ATOMIC ;
 int POLL_IN ;
 int SIGIO ;
 TYPE_2__ cs_char_data ;
 int dev_err (int *,char*) ;
 int kill_fasync (int *,int ,int ) ;
 struct char_queue* kmalloc (int,int ) ;
 int list_add_tail (int *,struct list_head*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int wake_up_interruptible (int *) ;

__attribute__((used)) static void cs_notify(u32 message, struct list_head *head)
{
 struct char_queue *entry;

 spin_lock(&cs_char_data.lock);

 if (!cs_char_data.opened) {
  spin_unlock(&cs_char_data.lock);
  goto out;
 }

 entry = kmalloc(sizeof(*entry), GFP_ATOMIC);
 if (!entry) {
  dev_err(&cs_char_data.cl->device,
   "Can't allocate new entry for the queue.\n");
  spin_unlock(&cs_char_data.lock);
  goto out;
 }

 entry->msg = message;
 list_add_tail(&entry->list, head);

 spin_unlock(&cs_char_data.lock);

 wake_up_interruptible(&cs_char_data.wait);
 kill_fasync(&cs_char_data.async_queue, SIGIO, POLL_IN);

out:
 return;
}
