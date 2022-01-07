
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct per_bio_data {int tick; } ;
struct cache {int need_tick_bio; int lock; } ;
struct bio {int bi_opf; } ;


 scalar_t__ REQ_OP_DISCARD ;
 scalar_t__ bio_op (struct bio*) ;
 struct per_bio_data* get_per_bio_data (struct bio*) ;
 int op_is_flush (int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void check_if_tick_bio_needed(struct cache *cache, struct bio *bio)
{
 unsigned long flags;
 struct per_bio_data *pb;

 spin_lock_irqsave(&cache->lock, flags);
 if (cache->need_tick_bio && !op_is_flush(bio->bi_opf) &&
     bio_op(bio) != REQ_OP_DISCARD) {
  pb = get_per_bio_data(bio);
  pb->tick = 1;
  cache->need_tick_bio = 0;
 }
 spin_unlock_irqrestore(&cache->lock, flags);
}
