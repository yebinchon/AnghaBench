
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pool {int prison; } ;
struct dm_cell_key {int dummy; } ;
struct dm_bio_prison_cell {int dummy; } ;
struct bio {int dummy; } ;


 int GFP_NOIO ;
 int dm_bio_detain (int ,struct dm_cell_key*,struct bio*,struct dm_bio_prison_cell*,struct dm_bio_prison_cell**) ;
 struct dm_bio_prison_cell* dm_bio_prison_alloc_cell (int ,int ) ;
 int dm_bio_prison_free_cell (int ,struct dm_bio_prison_cell*) ;

__attribute__((used)) static int bio_detain(struct pool *pool, struct dm_cell_key *key, struct bio *bio,
        struct dm_bio_prison_cell **cell_result)
{
 int r;
 struct dm_bio_prison_cell *cell_prealloc;





 cell_prealloc = dm_bio_prison_alloc_cell(pool->prison, GFP_NOIO);

 r = dm_bio_detain(pool->prison, key, bio, cell_prealloc, cell_result);
 if (r)




  dm_bio_prison_free_cell(pool->prison, cell_prealloc);

 return r;
}
