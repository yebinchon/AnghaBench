
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct workqueue_struct {int dummy; } ;
struct mmu_rb_ops {int dummy; } ;
struct TYPE_2__ {int * ops; int hlist; } ;
struct mmu_rb_handler {struct mm_struct* mm; TYPE_1__ mn; struct workqueue_struct* wq; int lru_list; int del_list; int del_work; int lock; void* ops_arg; struct mmu_rb_ops* ops; int root; } ;
struct mm_struct {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_HLIST_NODE (int *) ;
 int INIT_LIST_HEAD (int *) ;
 int INIT_WORK (int *,int ) ;
 int RB_ROOT_CACHED ;
 int handle_remove ;
 int kfree (struct mmu_rb_handler*) ;
 struct mmu_rb_handler* kmalloc (int,int ) ;
 int mmu_notifier_register (TYPE_1__*,struct mm_struct*) ;
 int mn_opts ;
 int spin_lock_init (int *) ;

int hfi1_mmu_rb_register(void *ops_arg, struct mm_struct *mm,
    struct mmu_rb_ops *ops,
    struct workqueue_struct *wq,
    struct mmu_rb_handler **handler)
{
 struct mmu_rb_handler *handlr;
 int ret;

 handlr = kmalloc(sizeof(*handlr), GFP_KERNEL);
 if (!handlr)
  return -ENOMEM;

 handlr->root = RB_ROOT_CACHED;
 handlr->ops = ops;
 handlr->ops_arg = ops_arg;
 INIT_HLIST_NODE(&handlr->mn.hlist);
 spin_lock_init(&handlr->lock);
 handlr->mn.ops = &mn_opts;
 handlr->mm = mm;
 INIT_WORK(&handlr->del_work, handle_remove);
 INIT_LIST_HEAD(&handlr->del_list);
 INIT_LIST_HEAD(&handlr->lru_list);
 handlr->wq = wq;

 ret = mmu_notifier_register(&handlr->mn, handlr->mm);
 if (ret) {
  kfree(handlr);
  return ret;
 }

 *handler = handlr;
 return 0;
}
