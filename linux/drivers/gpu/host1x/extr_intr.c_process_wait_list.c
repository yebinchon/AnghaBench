
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct list_head {int dummy; } ;
struct TYPE_2__ {int lock; int wait_head; } ;
struct host1x_syncpt {TYPE_1__ intr; int id; } ;
struct host1x {int dummy; } ;


 int HOST1X_INTR_ACTION_COUNT ;
 int INIT_LIST_HEAD (struct list_head*) ;
 int host1x_hw_intr_disable_syncpt_intr (struct host1x*,int ) ;
 int list_empty (int *) ;
 int remove_completed_waiters (int *,int ,struct list_head*) ;
 int reset_threshold_interrupt (struct host1x*,int *,int ) ;
 int run_handlers (struct list_head*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int process_wait_list(struct host1x *host,
        struct host1x_syncpt *syncpt,
        u32 threshold)
{
 struct list_head completed[HOST1X_INTR_ACTION_COUNT];
 unsigned int i;
 int empty;

 for (i = 0; i < HOST1X_INTR_ACTION_COUNT; ++i)
  INIT_LIST_HEAD(completed + i);

 spin_lock(&syncpt->intr.lock);

 remove_completed_waiters(&syncpt->intr.wait_head, threshold,
     completed);

 empty = list_empty(&syncpt->intr.wait_head);
 if (empty)
  host1x_hw_intr_disable_syncpt_intr(host, syncpt->id);
 else
  reset_threshold_interrupt(host, &syncpt->intr.wait_head,
       syncpt->id);

 spin_unlock(&syncpt->intr.lock);

 run_handlers(completed);

 return empty;
}
