
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mmu_rb_node {unsigned long addr; unsigned long len; int list; } ;
struct mmu_rb_handler {int lock; int root; } ;


 int __mmu_int_rb_remove (struct mmu_rb_node*,int *) ;
 struct mmu_rb_node* __mmu_rb_search (struct mmu_rb_handler*,unsigned long,unsigned long) ;
 int list_del (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

bool hfi1_mmu_rb_remove_unless_exact(struct mmu_rb_handler *handler,
         unsigned long addr, unsigned long len,
         struct mmu_rb_node **rb_node)
{
 struct mmu_rb_node *node;
 unsigned long flags;
 bool ret = 0;

 spin_lock_irqsave(&handler->lock, flags);
 node = __mmu_rb_search(handler, addr, len);
 if (node) {
  if (node->addr == addr && node->len == len)
   goto unlock;
  __mmu_int_rb_remove(node, &handler->root);
  list_del(&node->list);
  ret = 1;
 }
unlock:
 spin_unlock_irqrestore(&handler->lock, flags);
 *rb_node = node;
 return ret;
}
