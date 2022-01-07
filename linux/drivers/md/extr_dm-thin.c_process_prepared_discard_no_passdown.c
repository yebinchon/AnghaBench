
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct thin_c {TYPE_2__* pool; int td; } ;
struct dm_thin_new_mapping {TYPE_3__* cell; int bio; struct thin_c* tc; } ;
struct TYPE_4__ {int block_end; int block_begin; } ;
struct TYPE_6__ {TYPE_1__ key; } ;
struct TYPE_5__ {int mapping_pool; } ;


 int bio_endio (int ) ;
 int bio_io_error (int ) ;
 int cell_defer_no_holder (struct thin_c*,TYPE_3__*) ;
 int dm_thin_remove_range (int ,int ,int ) ;
 int mempool_free (struct dm_thin_new_mapping*,int *) ;
 int metadata_operation_failed (TYPE_2__*,char*,int) ;

__attribute__((used)) static void process_prepared_discard_no_passdown(struct dm_thin_new_mapping *m)
{
 int r;
 struct thin_c *tc = m->tc;

 r = dm_thin_remove_range(tc->td, m->cell->key.block_begin, m->cell->key.block_end);
 if (r) {
  metadata_operation_failed(tc->pool, "dm_thin_remove_range", r);
  bio_io_error(m->bio);
 } else
  bio_endio(m->bio);

 cell_defer_no_holder(tc, m->cell);
 mempool_free(m, &tc->pool->mapping_pool);
}
