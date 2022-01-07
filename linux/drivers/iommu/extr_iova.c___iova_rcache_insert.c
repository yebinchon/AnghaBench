
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iova_rcache {scalar_t__ depot_size; int lock; struct iova_magazine** depot; int cpu_rcaches; } ;
struct iova_magazine {int dummy; } ;
struct iova_domain {int dummy; } ;
struct iova_cpu_rcache {int lock; struct iova_magazine* loaded; struct iova_magazine* prev; } ;


 int GFP_ATOMIC ;
 scalar_t__ MAX_GLOBAL_MAGS ;
 struct iova_magazine* iova_magazine_alloc (int ) ;
 int iova_magazine_free (struct iova_magazine*) ;
 int iova_magazine_free_pfns (struct iova_magazine*,struct iova_domain*) ;
 int iova_magazine_full (struct iova_magazine*) ;
 int iova_magazine_push (struct iova_magazine*,unsigned long) ;
 struct iova_cpu_rcache* raw_cpu_ptr (int ) ;
 int spin_lock (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock (int *) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int swap (struct iova_magazine*,struct iova_magazine*) ;

__attribute__((used)) static bool __iova_rcache_insert(struct iova_domain *iovad,
     struct iova_rcache *rcache,
     unsigned long iova_pfn)
{
 struct iova_magazine *mag_to_free = ((void*)0);
 struct iova_cpu_rcache *cpu_rcache;
 bool can_insert = 0;
 unsigned long flags;

 cpu_rcache = raw_cpu_ptr(rcache->cpu_rcaches);
 spin_lock_irqsave(&cpu_rcache->lock, flags);

 if (!iova_magazine_full(cpu_rcache->loaded)) {
  can_insert = 1;
 } else if (!iova_magazine_full(cpu_rcache->prev)) {
  swap(cpu_rcache->prev, cpu_rcache->loaded);
  can_insert = 1;
 } else {
  struct iova_magazine *new_mag = iova_magazine_alloc(GFP_ATOMIC);

  if (new_mag) {
   spin_lock(&rcache->lock);
   if (rcache->depot_size < MAX_GLOBAL_MAGS) {
    rcache->depot[rcache->depot_size++] =
      cpu_rcache->loaded;
   } else {
    mag_to_free = cpu_rcache->loaded;
   }
   spin_unlock(&rcache->lock);

   cpu_rcache->loaded = new_mag;
   can_insert = 1;
  }
 }

 if (can_insert)
  iova_magazine_push(cpu_rcache->loaded, iova_pfn);

 spin_unlock_irqrestore(&cpu_rcache->lock, flags);

 if (mag_to_free) {
  iova_magazine_free_pfns(mag_to_free, iovad);
  iova_magazine_free(mag_to_free);
 }

 return can_insert;
}
