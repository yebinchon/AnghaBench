
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mm_struct {int dummy; } ;
struct kfd_process {int dummy; } ;


 int ESRCH ;
 struct kfd_process* kfd_lookup_process_by_mm (struct mm_struct*) ;
 int kfd_process_restore_queues (struct kfd_process*) ;
 int kfd_unref_process (struct kfd_process*) ;

int kgd2kfd_resume_mm(struct mm_struct *mm)
{
 struct kfd_process *p;
 int r;





 p = kfd_lookup_process_by_mm(mm);
 if (!p)
  return -ESRCH;

 r = kfd_process_restore_queues(p);

 kfd_unref_process(p);
 return r;
}
