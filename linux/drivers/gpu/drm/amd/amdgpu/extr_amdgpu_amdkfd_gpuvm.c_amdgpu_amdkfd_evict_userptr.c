
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mm_struct {int dummy; } ;
struct kgd_mem {int invalid; struct amdkfd_process_info* process_info; } ;
struct amdkfd_process_info {int restore_userptr_work; int evicted_bos; } ;


 int AMDGPU_USERPTR_RESTORE_DELAY_MS ;
 int atomic_inc_return (int *) ;
 int kgd2kfd_quiesce_mm (struct mm_struct*) ;
 int msecs_to_jiffies (int ) ;
 int pr_err (char*) ;
 int schedule_delayed_work (int *,int ) ;

int amdgpu_amdkfd_evict_userptr(struct kgd_mem *mem,
    struct mm_struct *mm)
{
 struct amdkfd_process_info *process_info = mem->process_info;
 int invalid, evicted_bos;
 int r = 0;

 invalid = atomic_inc_return(&mem->invalid);
 evicted_bos = atomic_inc_return(&process_info->evicted_bos);
 if (evicted_bos == 1) {

  r = kgd2kfd_quiesce_mm(mm);
  if (r)
   pr_err("Failed to quiesce KFD\n");
  schedule_delayed_work(&process_info->restore_userptr_work,
   msecs_to_jiffies(AMDGPU_USERPTR_RESTORE_DELAY_MS));
 }

 return r;
}
