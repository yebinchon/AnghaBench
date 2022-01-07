
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct timer_list {int dummy; } ;
struct TYPE_3__ {scalar_t__ current_state; } ;
struct sdma_engine {scalar_t__ descq_head; scalar_t__ descq_tail; scalar_t__ progress_check_head; int err_halt_worker; int tail_lock; int head_lock; TYPE_1__ state; TYPE_2__* dd; } ;
struct TYPE_4__ {unsigned int num_sdma; struct sdma_engine* per_sdma; } ;


 int __sdma_process_event (struct sdma_engine*,int ) ;
 int dd_dev_err (TYPE_2__*,char*) ;
 int err_progress_check_timer ;
 struct sdma_engine* from_timer (int ,struct timer_list*,int ) ;
 int schedule_work (int *) ;
 struct sdma_engine* sde ;
 int sdma_event_e90_sw_halted ;
 scalar_t__ sdma_state_s99_running ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int write_seqlock (int *) ;
 int write_sequnlock (int *) ;

__attribute__((used)) static void sdma_err_progress_check(struct timer_list *t)
{
 unsigned index;
 struct sdma_engine *sde = from_timer(sde, t, err_progress_check_timer);

 dd_dev_err(sde->dd, "SDE progress check event\n");
 for (index = 0; index < sde->dd->num_sdma; index++) {
  struct sdma_engine *curr_sde = &sde->dd->per_sdma[index];
  unsigned long flags;


  if (curr_sde == sde)
   continue;





  spin_lock_irqsave(&curr_sde->tail_lock, flags);
  write_seqlock(&curr_sde->head_lock);


  if (curr_sde->state.current_state != sdma_state_s99_running) {
   write_sequnlock(&curr_sde->head_lock);
   spin_unlock_irqrestore(&curr_sde->tail_lock, flags);
   continue;
  }

  if ((curr_sde->descq_head != curr_sde->descq_tail) &&
      (curr_sde->descq_head ==
    curr_sde->progress_check_head))
   __sdma_process_event(curr_sde,
          sdma_event_e90_sw_halted);
  write_sequnlock(&curr_sde->head_lock);
  spin_unlock_irqrestore(&curr_sde->tail_lock, flags);
 }
 schedule_work(&sde->err_halt_worker);
}
