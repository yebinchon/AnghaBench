
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ENOMEM ;
 scalar_t__ alloc_ordered_workqueue (char*,int ) ;
 scalar_t__ alloc_workqueue (char*,int ,int ) ;
 int kfd_process_destroy_wq () ;
 scalar_t__ kfd_process_wq ;
 scalar_t__ kfd_restore_wq ;

int kfd_process_create_wq(void)
{
 if (!kfd_process_wq)
  kfd_process_wq = alloc_workqueue("kfd_process_wq", 0, 0);
 if (!kfd_restore_wq)
  kfd_restore_wq = alloc_ordered_workqueue("kfd_restore_wq", 0);

 if (!kfd_process_wq || !kfd_restore_wq) {
  kfd_process_destroy_wq();
  return -ENOMEM;
 }

 return 0;
}
