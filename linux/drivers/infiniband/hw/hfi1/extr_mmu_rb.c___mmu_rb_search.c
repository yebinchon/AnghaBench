
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mmu_rb_node {int dummy; } ;
struct mmu_rb_handler {TYPE_1__* ops; int root; } ;
struct TYPE_2__ {scalar_t__ (* filter ) (struct mmu_rb_node*,unsigned long,unsigned long) ;} ;


 struct mmu_rb_node* __mmu_int_rb_iter_first (int *,unsigned long,unsigned long) ;
 struct mmu_rb_node* __mmu_int_rb_iter_next (struct mmu_rb_node*,unsigned long,unsigned long) ;
 scalar_t__ stub1 (struct mmu_rb_node*,unsigned long,unsigned long) ;
 int trace_hfi1_mmu_rb_search (unsigned long,unsigned long) ;

__attribute__((used)) static struct mmu_rb_node *__mmu_rb_search(struct mmu_rb_handler *handler,
        unsigned long addr,
        unsigned long len)
{
 struct mmu_rb_node *node = ((void*)0);

 trace_hfi1_mmu_rb_search(addr, len);
 if (!handler->ops->filter) {
  node = __mmu_int_rb_iter_first(&handler->root, addr,
            (addr + len) - 1);
 } else {
  for (node = __mmu_int_rb_iter_first(&handler->root, addr,
          (addr + len) - 1);
       node;
       node = __mmu_int_rb_iter_next(node, addr,
         (addr + len) - 1)) {
   if (handler->ops->filter(node, addr, len))
    return node;
  }
 }
 return node;
}
