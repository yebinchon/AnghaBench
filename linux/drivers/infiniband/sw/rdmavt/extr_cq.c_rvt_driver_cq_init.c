
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ENOMEM ;
 int WQ_CPU_INTENSIVE ;
 int WQ_HIGHPRI ;
 int alloc_workqueue (char*,int,int ,char*) ;
 int comp_vector_wq ;

int rvt_driver_cq_init(void)
{
 comp_vector_wq = alloc_workqueue("%s", WQ_HIGHPRI | WQ_CPU_INTENSIVE,
      0, "rdmavt_cq");
 if (!comp_vector_wq)
  return -ENOMEM;

 return 0;
}
