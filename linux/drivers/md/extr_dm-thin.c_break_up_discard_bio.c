
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thin_c {struct pool* pool; int td; } ;
struct pool {int (* process_prepared_discard ) (struct dm_thin_new_mapping*) ;int all_io_ds; } ;
struct dm_thin_new_mapping {int maybe_shared; int list; struct bio* bio; struct dm_bio_prison_cell* cell; scalar_t__ data_block; scalar_t__ virt_end; scalar_t__ virt_begin; struct thin_c* tc; } ;
struct dm_cell_key {int dummy; } ;
struct dm_bio_prison_cell {int dummy; } ;
struct bio {int dummy; } ;
typedef scalar_t__ dm_block_t ;


 int PHYSICAL ;
 scalar_t__ bio_detain (struct pool*,struct dm_cell_key*,int *,struct dm_bio_prison_cell**) ;
 int bio_inc_remaining (struct bio*) ;
 int build_key (int ,int ,scalar_t__,scalar_t__,struct dm_cell_key*) ;
 int dm_deferred_set_add_work (int ,int *) ;
 int dm_thin_find_mapped_range (int ,scalar_t__,scalar_t__,scalar_t__*,scalar_t__*,scalar_t__*,int*) ;
 int ensure_next_mapping (struct pool*) ;
 struct dm_thin_new_mapping* get_next_mapping (struct pool*) ;
 int stub1 (struct dm_thin_new_mapping*) ;

__attribute__((used)) static void break_up_discard_bio(struct thin_c *tc, dm_block_t begin, dm_block_t end,
     struct bio *bio)
{
 struct pool *pool = tc->pool;

 int r;
 bool maybe_shared;
 struct dm_cell_key data_key;
 struct dm_bio_prison_cell *data_cell;
 struct dm_thin_new_mapping *m;
 dm_block_t virt_begin, virt_end, data_begin;

 while (begin != end) {
  r = ensure_next_mapping(pool);
  if (r)

   return;

  r = dm_thin_find_mapped_range(tc->td, begin, end, &virt_begin, &virt_end,
           &data_begin, &maybe_shared);
  if (r)




   break;

  build_key(tc->td, PHYSICAL, data_begin, data_begin + (virt_end - virt_begin), &data_key);
  if (bio_detain(tc->pool, &data_key, ((void*)0), &data_cell)) {

   begin = virt_end;
   continue;
  }





  m = get_next_mapping(pool);
  m->tc = tc;
  m->maybe_shared = maybe_shared;
  m->virt_begin = virt_begin;
  m->virt_end = virt_end;
  m->data_block = data_begin;
  m->cell = data_cell;
  m->bio = bio;
  bio_inc_remaining(bio);
  if (!dm_deferred_set_add_work(pool->all_io_ds, &m->list))
   pool->process_prepared_discard(m);

  begin = virt_end;
 }
}
