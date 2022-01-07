
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
struct list_head {int dummy; } ;
struct ib_uverbs_file {TYPE_4__* async_file; } ;
struct TYPE_5__ {scalar_t__ reserved; void* event_type; void* element; } ;
struct TYPE_6__ {TYPE_1__ async; } ;
struct ib_uverbs_event {int obj_list; int list; int * counter; TYPE_2__ desc; } ;
typedef void* __u64 ;
struct TYPE_7__ {int async_queue; int poll_wait; int lock; struct list_head event_list; scalar_t__ is_closed; } ;
struct TYPE_8__ {TYPE_3__ ev_queue; } ;


 int GFP_ATOMIC ;
 int POLL_IN ;
 int SIGIO ;
 int kill_fasync (int *,int ,int ) ;
 struct ib_uverbs_event* kmalloc (int,int ) ;
 int list_add_tail (int *,struct list_head*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int wake_up_interruptible (int *) ;

__attribute__((used)) static void ib_uverbs_async_handler(struct ib_uverbs_file *file,
        __u64 element, __u64 event,
        struct list_head *obj_list,
        u32 *counter)
{
 struct ib_uverbs_event *entry;
 unsigned long flags;

 spin_lock_irqsave(&file->async_file->ev_queue.lock, flags);
 if (file->async_file->ev_queue.is_closed) {
  spin_unlock_irqrestore(&file->async_file->ev_queue.lock, flags);
  return;
 }

 entry = kmalloc(sizeof(*entry), GFP_ATOMIC);
 if (!entry) {
  spin_unlock_irqrestore(&file->async_file->ev_queue.lock, flags);
  return;
 }

 entry->desc.async.element = element;
 entry->desc.async.event_type = event;
 entry->desc.async.reserved = 0;
 entry->counter = counter;

 list_add_tail(&entry->list, &file->async_file->ev_queue.event_list);
 if (obj_list)
  list_add_tail(&entry->obj_list, obj_list);
 spin_unlock_irqrestore(&file->async_file->ev_queue.lock, flags);

 wake_up_interruptible(&file->async_file->ev_queue.poll_wait);
 kill_fasync(&file->async_file->ev_queue.async_queue, SIGIO, POLL_IN);
}
