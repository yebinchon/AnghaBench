
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int destroy_workqueue (scalar_t__) ;
 int flush_workqueue (scalar_t__) ;
 scalar_t__ siw_cm_wq ;

void siw_cm_exit(void)
{
 if (siw_cm_wq) {
  flush_workqueue(siw_cm_wq);
  destroy_workqueue(siw_cm_wq);
 }
}
