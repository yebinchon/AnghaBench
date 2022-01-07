
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iova_domain {int dummy; } ;
struct iova {int dummy; } ;


 int __alloc_and_insert_iova_range (struct iova_domain*,unsigned long,unsigned long,struct iova*,int) ;
 struct iova* alloc_iova_mem () ;
 int free_iova_mem (struct iova*) ;

struct iova *
alloc_iova(struct iova_domain *iovad, unsigned long size,
 unsigned long limit_pfn,
 bool size_aligned)
{
 struct iova *new_iova;
 int ret;

 new_iova = alloc_iova_mem();
 if (!new_iova)
  return ((void*)0);

 ret = __alloc_and_insert_iova_range(iovad, size, limit_pfn + 1,
   new_iova, size_aligned);

 if (ret) {
  free_iova_mem(new_iova);
  return ((void*)0);
 }

 return new_iova;
}
