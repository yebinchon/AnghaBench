
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_snap_tracked_chunk {int node; } ;
struct bio {int dummy; } ;


 int INIT_HLIST_NODE (int *) ;
 struct dm_snap_tracked_chunk* dm_per_bio_data (struct bio*,int) ;

__attribute__((used)) static void init_tracked_chunk(struct bio *bio)
{
 struct dm_snap_tracked_chunk *c = dm_per_bio_data(bio, sizeof(struct dm_snap_tracked_chunk));
 INIT_HLIST_NODE(&c->node);
}
