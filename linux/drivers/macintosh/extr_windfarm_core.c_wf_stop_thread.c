
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int kthread_stop (int *) ;
 int * wf_thread ;

__attribute__((used)) static void wf_stop_thread(void)
{
 if (wf_thread)
  kthread_stop(wf_thread);
 wf_thread = ((void*)0);
}
