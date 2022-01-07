
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int mm; } ;
struct kfd_process {int dummy; } ;


 struct kfd_process* find_process_by_mm (int ) ;
 int kfd_processes_srcu ;
 int srcu_read_lock (int *) ;
 int srcu_read_unlock (int *,int) ;

__attribute__((used)) static struct kfd_process *find_process(const struct task_struct *thread)
{
 struct kfd_process *p;
 int idx;

 idx = srcu_read_lock(&kfd_processes_srcu);
 p = find_process_by_mm(thread->mm);
 srcu_read_unlock(&kfd_processes_srcu, idx);

 return p;
}
