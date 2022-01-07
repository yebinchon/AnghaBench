
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iova_domain {int dummy; } ;


 int free_iova (struct iova_domain*,unsigned long) ;
 scalar_t__ iova_rcache_insert (struct iova_domain*,unsigned long,unsigned long) ;

void
free_iova_fast(struct iova_domain *iovad, unsigned long pfn, unsigned long size)
{
 if (iova_rcache_insert(iovad, pfn, size))
  return;

 free_iova(iovad, pfn);
}
