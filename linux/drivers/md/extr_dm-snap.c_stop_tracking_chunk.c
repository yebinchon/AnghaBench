
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_snapshot {int tracked_chunk_lock; } ;
struct dm_snap_tracked_chunk {int node; } ;
struct bio {int dummy; } ;


 struct dm_snap_tracked_chunk* dm_per_bio_data (struct bio*,int) ;
 int hlist_del (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void stop_tracking_chunk(struct dm_snapshot *s, struct bio *bio)
{
 struct dm_snap_tracked_chunk *c = dm_per_bio_data(bio, sizeof(struct dm_snap_tracked_chunk));
 unsigned long flags;

 spin_lock_irqsave(&s->tracked_chunk_lock, flags);
 hlist_del(&c->node);
 spin_unlock_irqrestore(&s->tracked_chunk_lock, flags);
}
