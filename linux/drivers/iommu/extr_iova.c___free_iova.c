
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iova_domain {int iova_rbtree_lock; } ;
struct iova {int dummy; } ;


 int private_free_iova (struct iova_domain*,struct iova*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void
__free_iova(struct iova_domain *iovad, struct iova *iova)
{
 unsigned long flags;

 spin_lock_irqsave(&iovad->iova_rbtree_lock, flags);
 private_free_iova(iovad, iova);
 spin_unlock_irqrestore(&iovad->iova_rbtree_lock, flags);
}
