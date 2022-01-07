
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int destroy_workqueue (int *) ;
 int * kfd_process_wq ;
 int * kfd_restore_wq ;

void kfd_process_destroy_wq(void)
{
 if (kfd_process_wq) {
  destroy_workqueue(kfd_process_wq);
  kfd_process_wq = ((void*)0);
 }
 if (kfd_restore_wq) {
  destroy_workqueue(kfd_restore_wq);
  kfd_restore_wq = ((void*)0);
 }
}
