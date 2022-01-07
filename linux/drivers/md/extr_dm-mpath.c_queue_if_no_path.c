
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct multipath {TYPE_1__* ti; int lock; int flags; } ;
struct TYPE_2__ {int table; } ;


 int MPATHF_QUEUE_IF_NO_PATH ;
 int MPATHF_SAVED_QUEUE_IF_NO_PATH ;
 int assign_bit (int ,int *,int) ;
 int dm_table_run_md_queue_async (int ) ;
 int process_queued_io_list (struct multipath*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static int queue_if_no_path(struct multipath *m, bool queue_if_no_path,
       bool save_old_value)
{
 unsigned long flags;

 spin_lock_irqsave(&m->lock, flags);
 assign_bit(MPATHF_SAVED_QUEUE_IF_NO_PATH, &m->flags,
     (save_old_value && test_bit(MPATHF_QUEUE_IF_NO_PATH, &m->flags)) ||
     (!save_old_value && queue_if_no_path));
 assign_bit(MPATHF_QUEUE_IF_NO_PATH, &m->flags, queue_if_no_path);
 spin_unlock_irqrestore(&m->lock, flags);

 if (!queue_if_no_path) {
  dm_table_run_md_queue_async(m->ti->table);
  process_queued_io_list(m);
 }

 return 0;
}
