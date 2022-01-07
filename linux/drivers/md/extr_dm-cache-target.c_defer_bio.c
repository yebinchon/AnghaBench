
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cache {int lock; int deferred_bios; } ;
struct bio {int dummy; } ;


 int bio_list_add (int *,struct bio*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int wake_deferred_bio_worker (struct cache*) ;

__attribute__((used)) static void defer_bio(struct cache *cache, struct bio *bio)
{
 unsigned long flags;

 spin_lock_irqsave(&cache->lock, flags);
 bio_list_add(&cache->deferred_bios, bio);
 spin_unlock_irqrestore(&cache->lock, flags);

 wake_deferred_bio_worker(cache);
}
