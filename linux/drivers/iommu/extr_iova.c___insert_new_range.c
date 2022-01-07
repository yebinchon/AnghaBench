
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iova_domain {int rbroot; } ;
struct iova {int dummy; } ;


 struct iova* alloc_and_init_iova (unsigned long,unsigned long) ;
 int iova_insert_rbtree (int *,struct iova*,int *) ;

__attribute__((used)) static struct iova *
__insert_new_range(struct iova_domain *iovad,
 unsigned long pfn_lo, unsigned long pfn_hi)
{
 struct iova *iova;

 iova = alloc_and_init_iova(pfn_lo, pfn_hi);
 if (iova)
  iova_insert_rbtree(&iovad->rbroot, iova, ((void*)0));

 return iova;
}
