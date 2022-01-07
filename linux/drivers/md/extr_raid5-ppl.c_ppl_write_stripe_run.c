
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct r5conf {struct ppl_conf* log_private; } ;
struct ppl_log {int io_mutex; } ;
struct ppl_conf {int count; struct ppl_log* child_logs; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int ppl_submit_current_io (struct ppl_log*) ;

void ppl_write_stripe_run(struct r5conf *conf)
{
 struct ppl_conf *ppl_conf = conf->log_private;
 struct ppl_log *log;
 int i;

 for (i = 0; i < ppl_conf->count; i++) {
  log = &ppl_conf->child_logs[i];

  mutex_lock(&log->io_mutex);
  ppl_submit_current_io(log);
  mutex_unlock(&log->io_mutex);
 }
}
