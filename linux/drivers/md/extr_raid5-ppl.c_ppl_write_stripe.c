
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct stripe_head {size_t pd_idx; int log_list; int count; int state; TYPE_1__* dev; int ppl_page; struct ppl_io_unit* ppl_io; } ;
struct r5conf {struct ppl_conf* log_private; } ;
struct ppl_log {int io_mutex; TYPE_2__* rdev; } ;
struct ppl_io_unit {int dummy; } ;
struct ppl_conf {int no_mem_stripes_lock; int no_mem_stripes; struct ppl_log* child_logs; } ;
struct TYPE_4__ {int flags; } ;
struct TYPE_3__ {int flags; } ;


 int EAGAIN ;
 int Faulty ;
 int R5_Insync ;
 int R5_Wantwrite ;
 int STRIPE_DELAYED ;
 int STRIPE_LOG_TRAPPED ;
 int STRIPE_SYNCING ;
 int atomic_inc (int *) ;
 int clear_bit (int ,int *) ;
 int list_add_tail (int *,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ ppl_log_stripe (struct ppl_log*,struct stripe_head*) ;
 int set_bit (int ,int *) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 scalar_t__ test_bit (int ,int *) ;

int ppl_write_stripe(struct r5conf *conf, struct stripe_head *sh)
{
 struct ppl_conf *ppl_conf = conf->log_private;
 struct ppl_io_unit *io = sh->ppl_io;
 struct ppl_log *log;

 if (io || test_bit(STRIPE_SYNCING, &sh->state) || !sh->ppl_page ||
     !test_bit(R5_Wantwrite, &sh->dev[sh->pd_idx].flags) ||
     !test_bit(R5_Insync, &sh->dev[sh->pd_idx].flags)) {
  clear_bit(STRIPE_LOG_TRAPPED, &sh->state);
  return -EAGAIN;
 }

 log = &ppl_conf->child_logs[sh->pd_idx];

 mutex_lock(&log->io_mutex);

 if (!log->rdev || test_bit(Faulty, &log->rdev->flags)) {
  mutex_unlock(&log->io_mutex);
  return -EAGAIN;
 }

 set_bit(STRIPE_LOG_TRAPPED, &sh->state);
 clear_bit(STRIPE_DELAYED, &sh->state);
 atomic_inc(&sh->count);

 if (ppl_log_stripe(log, sh)) {
  spin_lock_irq(&ppl_conf->no_mem_stripes_lock);
  list_add_tail(&sh->log_list, &ppl_conf->no_mem_stripes);
  spin_unlock_irq(&ppl_conf->no_mem_stripes_lock);
 }

 mutex_unlock(&log->io_mutex);

 return 0;
}
