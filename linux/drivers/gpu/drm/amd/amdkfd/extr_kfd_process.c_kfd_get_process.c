
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct task_struct {scalar_t__ mm; TYPE_1__* group_leader; } ;
struct kfd_process {int dummy; } ;
struct TYPE_2__ {scalar_t__ mm; } ;


 int EINVAL ;
 struct kfd_process* ERR_PTR (int ) ;
 struct kfd_process* find_process (struct task_struct const*) ;

struct kfd_process *kfd_get_process(const struct task_struct *thread)
{
 struct kfd_process *process;

 if (!thread->mm)
  return ERR_PTR(-EINVAL);


 if (thread->group_leader->mm != thread->mm)
  return ERR_PTR(-EINVAL);

 process = find_process(thread);
 if (!process)
  return ERR_PTR(-EINVAL);

 return process;
}
