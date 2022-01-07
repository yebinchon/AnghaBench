
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int destroy_workqueue (int *) ;
 int * device_reset_wq ;

void adf_exit_aer(void)
{
 if (device_reset_wq)
  destroy_workqueue(device_reset_wq);
 device_reset_wq = ((void*)0);
}
