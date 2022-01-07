
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iova_domain {int dummy; } ;
struct iova {int dummy; } ;


 int __free_iova (struct iova_domain*,struct iova*) ;
 struct iova* find_iova (struct iova_domain*,unsigned long) ;

void
free_iova(struct iova_domain *iovad, unsigned long pfn)
{
 struct iova *iova = find_iova(iovad, pfn);

 if (iova)
  __free_iova(iovad, iova);

}
