
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cache {int lock; int deferred_bios; } ;
struct bio_list {int dummy; } ;


 int bio_list_init (struct bio_list*) ;
 int bio_list_merge (int *,struct bio_list*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int wake_deferred_bio_worker (struct cache*) ;

__attribute__((used)) static void defer_bios(struct cache *cache, struct bio_list *bios)
{
 unsigned long flags;

 spin_lock_irqsave(&cache->lock, flags);
 bio_list_merge(&cache->deferred_bios, bios);
 bio_list_init(bios);
 spin_unlock_irqrestore(&cache->lock, flags);

 wake_deferred_bio_worker(cache);
}
