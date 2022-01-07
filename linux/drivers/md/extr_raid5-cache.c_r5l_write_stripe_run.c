
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct r5l_log {int io_mutex; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int r5l_submit_current_io (struct r5l_log*) ;

void r5l_write_stripe_run(struct r5l_log *log)
{
 if (!log)
  return;
 mutex_lock(&log->io_mutex);
 r5l_submit_current_io(log);
 mutex_unlock(&log->io_mutex);
}
