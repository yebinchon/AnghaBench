
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct r5conf {int wait_for_quiescent; struct ppl_conf* log_private; } ;
struct ppl_log {int io_list_lock; } ;
struct ppl_conf {int count; struct ppl_log* child_logs; } ;


 int ppl_no_io_unit_submitted (struct r5conf*,struct ppl_log*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int wait_event_lock_irq (int ,int ,int ) ;

void ppl_quiesce(struct r5conf *conf, int quiesce)
{
 struct ppl_conf *ppl_conf = conf->log_private;
 int i;

 if (quiesce) {
  for (i = 0; i < ppl_conf->count; i++) {
   struct ppl_log *log = &ppl_conf->child_logs[i];

   spin_lock_irq(&log->io_list_lock);
   wait_event_lock_irq(conf->wait_for_quiescent,
         ppl_no_io_unit_submitted(conf, log),
         log->io_list_lock);
   spin_unlock_irq(&log->io_list_lock);
  }
 }
}
