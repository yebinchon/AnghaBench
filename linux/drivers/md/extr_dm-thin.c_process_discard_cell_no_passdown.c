
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct thin_c {struct pool* pool; } ;
struct pool {int (* process_prepared_discard ) (struct dm_thin_new_mapping*) ;int all_io_ds; } ;
struct dm_thin_new_mapping {int list; int bio; struct dm_bio_prison_cell* cell; int virt_end; int virt_begin; struct thin_c* tc; } ;
struct TYPE_2__ {int block_end; int block_begin; } ;
struct dm_bio_prison_cell {int holder; TYPE_1__ key; } ;


 int dm_deferred_set_add_work (int ,int *) ;
 struct dm_thin_new_mapping* get_next_mapping (struct pool*) ;
 int stub1 (struct dm_thin_new_mapping*) ;

__attribute__((used)) static void process_discard_cell_no_passdown(struct thin_c *tc,
          struct dm_bio_prison_cell *virt_cell)
{
 struct pool *pool = tc->pool;
 struct dm_thin_new_mapping *m = get_next_mapping(pool);





 m->tc = tc;
 m->virt_begin = virt_cell->key.block_begin;
 m->virt_end = virt_cell->key.block_end;
 m->cell = virt_cell;
 m->bio = virt_cell->holder;

 if (!dm_deferred_set_add_work(pool->all_io_ds, &m->list))
  pool->process_prepared_discard(m);
}
