
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iova_domain {int * rcaches; } ;


 unsigned int IOVA_RANGE_CACHE_MAX_SIZE ;
 int __iova_rcache_insert (struct iova_domain*,int *,unsigned long) ;
 unsigned int order_base_2 (unsigned long) ;

__attribute__((used)) static bool iova_rcache_insert(struct iova_domain *iovad, unsigned long pfn,
          unsigned long size)
{
 unsigned int log_size = order_base_2(size);

 if (log_size >= IOVA_RANGE_CACHE_MAX_SIZE)
  return 0;

 return __iova_rcache_insert(iovad, &iovad->rcaches[log_size], pfn);
}
