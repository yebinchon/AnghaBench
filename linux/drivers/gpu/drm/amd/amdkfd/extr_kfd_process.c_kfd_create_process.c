
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct task_struct {scalar_t__ mm; TYPE_1__* group_leader; } ;
struct TYPE_8__ {char* name; int mode; } ;
struct kfd_process {TYPE_2__* lead_thread; TYPE_3__ attr_pasid; int kobj; } ;
struct file {int dummy; } ;
struct TYPE_9__ {int kobj; } ;
struct TYPE_7__ {scalar_t__ pid; } ;
struct TYPE_6__ {scalar_t__ mm; } ;


 int EINVAL ;
 struct kfd_process* ERR_PTR (int) ;
 scalar_t__ IS_ERR (struct kfd_process*) ;
 int KFD_SYSFS_FILE_MODE ;
 struct kfd_process* create_process (struct task_struct*) ;
 struct task_struct* current ;
 struct kfd_process* find_process (struct task_struct*) ;
 int kfd_alloc_struct (int ) ;
 int kfd_process_init_cwsr_apu (struct kfd_process*,struct file*) ;
 int kfd_processes_mutex ;
 int kobject_init_and_add (int ,int *,int ,char*,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pr_debug (char*) ;
 int pr_warn (char*,...) ;
 TYPE_5__ procfs ;
 int procfs_type ;
 int sysfs_attr_init (TYPE_3__*) ;
 int sysfs_create_file (int ,TYPE_3__*) ;

struct kfd_process *kfd_create_process(struct file *filep)
{
 struct kfd_process *process;
 struct task_struct *thread = current;
 int ret;

 if (!thread->mm)
  return ERR_PTR(-EINVAL);


 if (thread->group_leader->mm != thread->mm)
  return ERR_PTR(-EINVAL);






 mutex_lock(&kfd_processes_mutex);


 process = find_process(thread);
 if (process) {
  pr_debug("Process already found\n");
 } else {
  process = create_process(thread);
  if (IS_ERR(process))
   goto out;

  ret = kfd_process_init_cwsr_apu(process, filep);
  if (ret) {
   process = ERR_PTR(ret);
   goto out;
  }

  if (!procfs.kobj)
   goto out;

  process->kobj = kfd_alloc_struct(process->kobj);
  if (!process->kobj) {
   pr_warn("Creating procfs kobject failed");
   goto out;
  }
  ret = kobject_init_and_add(process->kobj, &procfs_type,
        procfs.kobj, "%d",
        (int)process->lead_thread->pid);
  if (ret) {
   pr_warn("Creating procfs pid directory failed");
   goto out;
  }

  process->attr_pasid.name = "pasid";
  process->attr_pasid.mode = KFD_SYSFS_FILE_MODE;
  sysfs_attr_init(&process->attr_pasid);
  ret = sysfs_create_file(process->kobj, &process->attr_pasid);
  if (ret)
   pr_warn("Creating pasid for pid %d failed",
     (int)process->lead_thread->pid);
 }
out:
 mutex_unlock(&kfd_processes_mutex);

 return process;
}
