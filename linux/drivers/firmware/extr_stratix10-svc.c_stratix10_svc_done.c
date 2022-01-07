
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct stratix10_svc_chan {TYPE_1__* ctrl; } ;
struct TYPE_2__ {int num_active_client; int * task; } ;


 int kthread_stop (int *) ;
 int pr_debug (char*) ;

void stratix10_svc_done(struct stratix10_svc_chan *chan)
{

 if (chan->ctrl->task && chan->ctrl->num_active_client <= 1) {
  pr_debug("svc_smc_hvc_shm_thread is stopped\n");
  kthread_stop(chan->ctrl->task);
  chan->ctrl->task = ((void*)0);
 }
}
