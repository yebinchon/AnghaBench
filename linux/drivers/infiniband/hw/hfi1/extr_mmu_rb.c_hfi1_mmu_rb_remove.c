
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mmu_rb_node {int list; int len; int addr; } ;
struct mmu_rb_handler {int ops_arg; TYPE_1__* ops; int lock; int root; } ;
struct TYPE_2__ {int (* remove ) (int ,struct mmu_rb_node*) ;} ;


 int __mmu_int_rb_remove (struct mmu_rb_node*,int *) ;
 int list_del (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (int ,struct mmu_rb_node*) ;
 int trace_hfi1_mmu_rb_remove (int ,int ) ;

void hfi1_mmu_rb_remove(struct mmu_rb_handler *handler,
   struct mmu_rb_node *node)
{
 unsigned long flags;


 trace_hfi1_mmu_rb_remove(node->addr, node->len);
 spin_lock_irqsave(&handler->lock, flags);
 __mmu_int_rb_remove(node, &handler->root);
 list_del(&node->list);
 spin_unlock_irqrestore(&handler->lock, flags);

 handler->ops->remove(handler->ops_arg, node);
}
