
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int destroy_workqueue (int *) ;
 int flush_workqueue (int *) ;
 int * wq ;

void edac_workqueue_teardown(void)
{
 flush_workqueue(wq);
 destroy_workqueue(wq);
 wq = ((void*)0);
}
