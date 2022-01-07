
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thin_c {int td; struct pool* pool; } ;
struct pool {int dummy; } ;
struct dm_cell_key {int dummy; } ;
struct dm_bio_prison_cell {int dummy; } ;
struct bio {int dummy; } ;
typedef int dm_block_t ;


 scalar_t__ bio_detain (struct pool*,struct dm_cell_key*,struct bio*,struct dm_bio_prison_cell**) ;
 int build_virtual_key (int ,int ,struct dm_cell_key*) ;
 int get_bio_block (struct thin_c*,struct bio*) ;
 int process_cell (struct thin_c*,struct dm_bio_prison_cell*) ;

__attribute__((used)) static void process_bio(struct thin_c *tc, struct bio *bio)
{
 struct pool *pool = tc->pool;
 dm_block_t block = get_bio_block(tc, bio);
 struct dm_bio_prison_cell *cell;
 struct dm_cell_key key;





 build_virtual_key(tc->td, block, &key);
 if (bio_detain(pool, &key, bio, &cell))
  return;

 process_cell(tc, cell);
}
