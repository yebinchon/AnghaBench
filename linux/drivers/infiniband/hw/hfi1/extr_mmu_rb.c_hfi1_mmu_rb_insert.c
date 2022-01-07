
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mmu_rb_node {int list; int len; int addr; } ;
struct mmu_rb_handler {int lock; int root; int ops_arg; TYPE_1__* ops; int lru_list; } ;
struct TYPE_2__ {int (* insert ) (int ,struct mmu_rb_node*) ;} ;


 int EINVAL ;
 int __mmu_int_rb_insert (struct mmu_rb_node*,int *) ;
 int __mmu_int_rb_remove (struct mmu_rb_node*,int *) ;
 struct mmu_rb_node* __mmu_rb_search (struct mmu_rb_handler*,int ,int ) ;
 int list_add (int *,int *) ;
 int list_del (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (int ,struct mmu_rb_node*) ;
 int trace_hfi1_mmu_rb_insert (int ,int ) ;

int hfi1_mmu_rb_insert(struct mmu_rb_handler *handler,
         struct mmu_rb_node *mnode)
{
 struct mmu_rb_node *node;
 unsigned long flags;
 int ret = 0;

 trace_hfi1_mmu_rb_insert(mnode->addr, mnode->len);
 spin_lock_irqsave(&handler->lock, flags);
 node = __mmu_rb_search(handler, mnode->addr, mnode->len);
 if (node) {
  ret = -EINVAL;
  goto unlock;
 }
 __mmu_int_rb_insert(mnode, &handler->root);
 list_add(&mnode->list, &handler->lru_list);

 ret = handler->ops->insert(handler->ops_arg, mnode);
 if (ret) {
  __mmu_int_rb_remove(mnode, &handler->root);
  list_del(&mnode->list);
 }
unlock:
 spin_unlock_irqrestore(&handler->lock, flags);
 return ret;
}
