
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct thin_c {TYPE_1__* pool; int td; } ;
struct dm_cell_key {int dummy; } ;
struct dm_bio_prison_cell {int dummy; } ;
struct bio {int dummy; } ;
typedef scalar_t__ dm_block_t ;
struct TYPE_2__ {int (* process_discard_cell ) (struct thin_c*,struct dm_bio_prison_cell*) ;} ;


 int VIRTUAL ;
 scalar_t__ bio_detain (TYPE_1__*,struct dm_cell_key*,struct bio*,struct dm_bio_prison_cell**) ;
 int bio_endio (struct bio*) ;
 int build_key (int ,int ,scalar_t__,scalar_t__,struct dm_cell_key*) ;
 int get_bio_block_range (struct thin_c*,struct bio*,scalar_t__*,scalar_t__*) ;
 int stub1 (struct thin_c*,struct dm_bio_prison_cell*) ;

__attribute__((used)) static void process_discard_bio(struct thin_c *tc, struct bio *bio)
{
 dm_block_t begin, end;
 struct dm_cell_key virt_key;
 struct dm_bio_prison_cell *virt_cell;

 get_bio_block_range(tc, bio, &begin, &end);
 if (begin == end) {



  bio_endio(bio);
  return;
 }

 build_key(tc->td, VIRTUAL, begin, end, &virt_key);
 if (bio_detain(tc->pool, &virt_key, bio, &virt_cell))







  return;

 tc->pool->process_discard_cell(tc, virt_cell);
}
