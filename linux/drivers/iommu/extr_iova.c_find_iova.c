
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iova_domain {int iova_rbtree_lock; } ;
struct iova {int dummy; } ;


 struct iova* private_find_iova (struct iova_domain*,unsigned long) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

struct iova *find_iova(struct iova_domain *iovad, unsigned long pfn)
{
 unsigned long flags;
 struct iova *iova;


 spin_lock_irqsave(&iovad->iova_rbtree_lock, flags);
 iova = private_find_iova(iovad, pfn);
 spin_unlock_irqrestore(&iovad->iova_rbtree_lock, flags);
 return iova;
}
