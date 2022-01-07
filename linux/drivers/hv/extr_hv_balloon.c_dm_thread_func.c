
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hv_dynmem_device {int dummy; } ;
struct TYPE_2__ {int config_event; } ;


 int HZ ;
 TYPE_1__ dm_device ;
 int kthread_should_stop () ;
 int post_status (struct hv_dynmem_device*) ;
 int reinit_completion (int *) ;
 int wait_for_completion_interruptible_timeout (int *,int) ;

__attribute__((used)) static int dm_thread_func(void *dm_dev)
{
 struct hv_dynmem_device *dm = dm_dev;

 while (!kthread_should_stop()) {
  wait_for_completion_interruptible_timeout(
      &dm_device.config_event, 1*HZ);




  reinit_completion(&dm_device.config_event);
  post_status(dm);
 }

 return 0;
}
