
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iova_magazine {int size; int * pfns; } ;
struct iova_domain {int iova_rbtree_lock; } ;
struct iova {int dummy; } ;


 int BUG_ON (int) ;
 struct iova* private_find_iova (struct iova_domain*,int ) ;
 int private_free_iova (struct iova_domain*,struct iova*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void
iova_magazine_free_pfns(struct iova_magazine *mag, struct iova_domain *iovad)
{
 unsigned long flags;
 int i;

 if (!mag)
  return;

 spin_lock_irqsave(&iovad->iova_rbtree_lock, flags);

 for (i = 0 ; i < mag->size; ++i) {
  struct iova *iova = private_find_iova(iovad, mag->pfns[i]);

  BUG_ON(!iova);
  private_free_iova(iovad, iova);
 }

 spin_unlock_irqrestore(&iovad->iova_rbtree_lock, flags);

 mag->size = 0;
}
