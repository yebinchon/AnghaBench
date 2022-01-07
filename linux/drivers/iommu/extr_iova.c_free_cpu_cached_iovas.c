
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iova_rcache {int cpu_rcaches; } ;
struct iova_domain {struct iova_rcache* rcaches; } ;
struct iova_cpu_rcache {int lock; int prev; int loaded; } ;


 int IOVA_RANGE_CACHE_MAX_SIZE ;
 int iova_magazine_free_pfns (int ,struct iova_domain*) ;
 struct iova_cpu_rcache* per_cpu_ptr (int ,unsigned int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void free_cpu_cached_iovas(unsigned int cpu, struct iova_domain *iovad)
{
 struct iova_cpu_rcache *cpu_rcache;
 struct iova_rcache *rcache;
 unsigned long flags;
 int i;

 for (i = 0; i < IOVA_RANGE_CACHE_MAX_SIZE; ++i) {
  rcache = &iovad->rcaches[i];
  cpu_rcache = per_cpu_ptr(rcache->cpu_rcaches, cpu);
  spin_lock_irqsave(&cpu_rcache->lock, flags);
  iova_magazine_free_pfns(cpu_rcache->loaded, iovad);
  iova_magazine_free_pfns(cpu_rcache->prev, iovad);
  spin_unlock_irqrestore(&cpu_rcache->lock, flags);
 }
}
