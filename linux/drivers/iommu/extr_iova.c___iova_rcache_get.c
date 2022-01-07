
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iova_rcache {size_t depot_size; int lock; int * depot; int cpu_rcaches; } ;
struct iova_cpu_rcache {int lock; int loaded; int prev; } ;


 int iova_magazine_empty (int ) ;
 int iova_magazine_free (int ) ;
 unsigned long iova_magazine_pop (int ,unsigned long) ;
 struct iova_cpu_rcache* raw_cpu_ptr (int ) ;
 int spin_lock (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock (int *) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int swap (int ,int ) ;

__attribute__((used)) static unsigned long __iova_rcache_get(struct iova_rcache *rcache,
           unsigned long limit_pfn)
{
 struct iova_cpu_rcache *cpu_rcache;
 unsigned long iova_pfn = 0;
 bool has_pfn = 0;
 unsigned long flags;

 cpu_rcache = raw_cpu_ptr(rcache->cpu_rcaches);
 spin_lock_irqsave(&cpu_rcache->lock, flags);

 if (!iova_magazine_empty(cpu_rcache->loaded)) {
  has_pfn = 1;
 } else if (!iova_magazine_empty(cpu_rcache->prev)) {
  swap(cpu_rcache->prev, cpu_rcache->loaded);
  has_pfn = 1;
 } else {
  spin_lock(&rcache->lock);
  if (rcache->depot_size > 0) {
   iova_magazine_free(cpu_rcache->loaded);
   cpu_rcache->loaded = rcache->depot[--rcache->depot_size];
   has_pfn = 1;
  }
  spin_unlock(&rcache->lock);
 }

 if (has_pfn)
  iova_pfn = iova_magazine_pop(cpu_rcache->loaded, limit_pfn);

 spin_unlock_irqrestore(&cpu_rcache->lock, flags);

 return iova_pfn;
}
