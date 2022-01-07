
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct per_bio_data {int * cell; } ;
struct cache {int prison; } ;
struct bio {int dummy; } ;


 scalar_t__ dm_cell_put_v2 (int ,int *) ;
 int free_prison_cell (struct cache*,int *) ;
 struct per_bio_data* get_per_bio_data (struct bio*) ;

__attribute__((used)) static void bio_drop_shared_lock(struct cache *cache, struct bio *bio)
{
 struct per_bio_data *pb = get_per_bio_data(bio);

 if (pb->cell && dm_cell_put_v2(cache->prison, pb->cell))
  free_prison_cell(cache, pb->cell);
 pb->cell = ((void*)0);
}
