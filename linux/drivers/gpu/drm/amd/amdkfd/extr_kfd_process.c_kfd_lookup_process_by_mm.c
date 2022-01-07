
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mm_struct {int dummy; } ;
struct kfd_process {int ref; } ;


 struct kfd_process* find_process_by_mm (struct mm_struct const*) ;
 int kfd_processes_srcu ;
 int kref_get (int *) ;
 int srcu_read_lock (int *) ;
 int srcu_read_unlock (int *,int) ;

struct kfd_process *kfd_lookup_process_by_mm(const struct mm_struct *mm)
{
 struct kfd_process *p;

 int idx = srcu_read_lock(&kfd_processes_srcu);

 p = find_process_by_mm(mm);
 if (p)
  kref_get(&p->ref);

 srcu_read_unlock(&kfd_processes_srcu, idx);

 return p;
}
