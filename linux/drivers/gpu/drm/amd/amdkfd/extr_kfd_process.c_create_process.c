
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct task_struct {int group_leader; scalar_t__ mm; } ;
struct TYPE_2__ {int * ops; } ;
struct kfd_process {scalar_t__ pasid; int mutex; int pqm; scalar_t__ mm; int kfd_processes; int lead_thread; TYPE_1__ mmu_notifier; int is_32bit_user_mode; int last_restore_timestamp; int restore_work; int eviction_work; int per_device_data; int ref; } ;


 int ENOMEM ;
 struct kfd_process* ERR_PTR (int) ;
 int GFP_KERNEL ;
 int INIT_DELAYED_WORK (int *,int ) ;
 int INIT_LIST_HEAD (int *) ;
 int evict_process_worker ;
 int get_jiffies_64 () ;
 int get_task_struct (int ) ;
 int hash_add_rcu (int ,int *,uintptr_t) ;
 int in_compat_syscall () ;
 scalar_t__ kfd_alloc_process_doorbells (struct kfd_process*) ;
 int kfd_event_init_process (struct kfd_process*) ;
 int kfd_free_process_doorbells (struct kfd_process*) ;
 int kfd_init_apertures (struct kfd_process*) ;
 scalar_t__ kfd_pasid_alloc () ;
 int kfd_pasid_free (scalar_t__) ;
 int kfd_process_destroy_pdds (struct kfd_process*) ;
 int kfd_process_free_outstanding_kfd_bos (struct kfd_process*) ;
 int kfd_process_mmu_notifier_ops ;
 int kfd_processes_table ;
 int kfree (struct kfd_process*) ;
 int kref_init (int *) ;
 struct kfd_process* kzalloc (int,int ) ;
 int mmu_notifier_register (TYPE_1__*,scalar_t__) ;
 int mutex_destroy (int *) ;
 int mutex_init (int *) ;
 int pqm_init (int *,struct kfd_process*) ;
 int pqm_uninit (int *) ;
 int restore_process_worker ;

__attribute__((used)) static struct kfd_process *create_process(const struct task_struct *thread)
{
 struct kfd_process *process;
 int err = -ENOMEM;

 process = kzalloc(sizeof(*process), GFP_KERNEL);
 if (!process)
  goto err_alloc_process;

 kref_init(&process->ref);
 mutex_init(&process->mutex);
 process->mm = thread->mm;
 process->lead_thread = thread->group_leader;
 INIT_LIST_HEAD(&process->per_device_data);
 INIT_DELAYED_WORK(&process->eviction_work, evict_process_worker);
 INIT_DELAYED_WORK(&process->restore_work, restore_process_worker);
 process->last_restore_timestamp = get_jiffies_64();
 kfd_event_init_process(process);
 process->is_32bit_user_mode = in_compat_syscall();

 process->pasid = kfd_pasid_alloc();
 if (process->pasid == 0)
  goto err_alloc_pasid;

 if (kfd_alloc_process_doorbells(process) < 0)
  goto err_alloc_doorbells;

 err = pqm_init(&process->pqm, process);
 if (err != 0)
  goto err_process_pqm_init;


 err = kfd_init_apertures(process);
 if (err != 0)
  goto err_init_apertures;


 process->mmu_notifier.ops = &kfd_process_mmu_notifier_ops;
 err = mmu_notifier_register(&process->mmu_notifier, process->mm);
 if (err)
  goto err_register_notifier;

 get_task_struct(process->lead_thread);
 hash_add_rcu(kfd_processes_table, &process->kfd_processes,
   (uintptr_t)process->mm);

 return process;

err_register_notifier:
 kfd_process_free_outstanding_kfd_bos(process);
 kfd_process_destroy_pdds(process);
err_init_apertures:
 pqm_uninit(&process->pqm);
err_process_pqm_init:
 kfd_free_process_doorbells(process);
err_alloc_doorbells:
 kfd_pasid_free(process->pasid);
err_alloc_pasid:
 mutex_destroy(&process->mutex);
 kfree(process);
err_alloc_process:
 return ERR_PTR(err);
}
