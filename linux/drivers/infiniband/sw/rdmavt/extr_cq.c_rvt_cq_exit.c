
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * comp_vector_wq ;
 int destroy_workqueue (int *) ;

void rvt_cq_exit(void)
{
 destroy_workqueue(comp_vector_wq);
 comp_vector_wq = ((void*)0);
}
