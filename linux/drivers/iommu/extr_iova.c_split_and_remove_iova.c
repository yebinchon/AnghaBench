
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iova_domain {int iova_rbtree_lock; int rbroot; } ;
struct iova {unsigned long pfn_lo; unsigned long pfn_hi; int node; } ;


 int __cached_rbnode_delete_update (struct iova_domain*,struct iova*) ;
 struct iova* alloc_and_init_iova (unsigned long,unsigned long) ;
 int free_iova_mem (struct iova*) ;
 int iova_insert_rbtree (int *,struct iova*,int *) ;
 int rb_erase (int *,int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

struct iova *
split_and_remove_iova(struct iova_domain *iovad, struct iova *iova,
        unsigned long pfn_lo, unsigned long pfn_hi)
{
 unsigned long flags;
 struct iova *prev = ((void*)0), *next = ((void*)0);

 spin_lock_irqsave(&iovad->iova_rbtree_lock, flags);
 if (iova->pfn_lo < pfn_lo) {
  prev = alloc_and_init_iova(iova->pfn_lo, pfn_lo - 1);
  if (prev == ((void*)0))
   goto error;
 }
 if (iova->pfn_hi > pfn_hi) {
  next = alloc_and_init_iova(pfn_hi + 1, iova->pfn_hi);
  if (next == ((void*)0))
   goto error;
 }

 __cached_rbnode_delete_update(iovad, iova);
 rb_erase(&iova->node, &iovad->rbroot);

 if (prev) {
  iova_insert_rbtree(&iovad->rbroot, prev, ((void*)0));
  iova->pfn_lo = pfn_lo;
 }
 if (next) {
  iova_insert_rbtree(&iovad->rbroot, next, ((void*)0));
  iova->pfn_hi = pfn_hi;
 }
 spin_unlock_irqrestore(&iovad->iova_rbtree_lock, flags);

 return iova;

error:
 spin_unlock_irqrestore(&iovad->iova_rbtree_lock, flags);
 if (prev)
  free_iova_mem(prev);
 return ((void*)0);
}
