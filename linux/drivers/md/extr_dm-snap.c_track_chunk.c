
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_snapshot {int tracked_chunk_lock; int * tracked_chunk_hash; } ;
struct dm_snap_tracked_chunk {int node; int chunk; } ;
struct bio {int dummy; } ;
typedef int chunk_t ;


 size_t DM_TRACKED_CHUNK_HASH (int ) ;
 struct dm_snap_tracked_chunk* dm_per_bio_data (struct bio*,int) ;
 int hlist_add_head (int *,int *) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static void track_chunk(struct dm_snapshot *s, struct bio *bio, chunk_t chunk)
{
 struct dm_snap_tracked_chunk *c = dm_per_bio_data(bio, sizeof(struct dm_snap_tracked_chunk));

 c->chunk = chunk;

 spin_lock_irq(&s->tracked_chunk_lock);
 hlist_add_head(&c->node,
         &s->tracked_chunk_hash[DM_TRACKED_CHUNK_HASH(chunk)]);
 spin_unlock_irq(&s->tracked_chunk_lock);
}
