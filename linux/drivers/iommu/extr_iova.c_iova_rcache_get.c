
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iova_domain {int * rcaches; } ;


 unsigned int IOVA_RANGE_CACHE_MAX_SIZE ;
 unsigned long __iova_rcache_get (int *,unsigned long) ;
 unsigned int order_base_2 (unsigned long) ;

__attribute__((used)) static unsigned long iova_rcache_get(struct iova_domain *iovad,
         unsigned long size,
         unsigned long limit_pfn)
{
 unsigned int log_size = order_base_2(size);

 if (log_size >= IOVA_RANGE_CACHE_MAX_SIZE)
  return 0;

 return __iova_rcache_get(&iovad->rcaches[log_size], limit_pfn - size);
}
