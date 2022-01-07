
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mmu_notifier {int dummy; } ;
struct mm_struct {int dummy; } ;
struct ib_ucontext_per_mm {struct mmu_notifier mn; int tgid; int umem_rwsem; int umem_tree; } ;
struct TYPE_2__ {int group_leader; struct mm_struct* mm; } ;


 int ENOMEM ;
 struct mmu_notifier* ERR_PTR (int ) ;
 int GFP_KERNEL ;
 int PIDTYPE_PID ;
 int RB_ROOT_CACHED ;
 int WARN_ON (int) ;
 TYPE_1__* current ;
 int get_task_pid (int ,int ) ;
 int init_rwsem (int *) ;
 struct ib_ucontext_per_mm* kzalloc (int,int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;

__attribute__((used)) static struct mmu_notifier *ib_umem_alloc_notifier(struct mm_struct *mm)
{
 struct ib_ucontext_per_mm *per_mm;

 per_mm = kzalloc(sizeof(*per_mm), GFP_KERNEL);
 if (!per_mm)
  return ERR_PTR(-ENOMEM);

 per_mm->umem_tree = RB_ROOT_CACHED;
 init_rwsem(&per_mm->umem_rwsem);

 WARN_ON(mm != current->mm);
 rcu_read_lock();
 per_mm->tgid = get_task_pid(current->group_leader, PIDTYPE_PID);
 rcu_read_unlock();
 return &per_mm->mn;
}
