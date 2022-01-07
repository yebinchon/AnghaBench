
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_snap_tracked_chunk {int node; } ;
struct bio {int dummy; } ;


 struct dm_snap_tracked_chunk* dm_per_bio_data (struct bio*,int) ;
 int hlist_unhashed (int *) ;

__attribute__((used)) static bool is_bio_tracked(struct bio *bio)
{
 struct dm_snap_tracked_chunk *c = dm_per_bio_data(bio, sizeof(struct dm_snap_tracked_chunk));
 return !hlist_unhashed(&c->node);
}
