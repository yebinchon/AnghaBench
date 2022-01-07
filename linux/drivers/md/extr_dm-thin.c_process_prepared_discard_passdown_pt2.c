
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thin_c {struct pool* pool; } ;
struct pool {int mapping_pool; int pmd; } ;
struct dm_thin_new_mapping {int cell; int bio; scalar_t__ virt_begin; scalar_t__ virt_end; scalar_t__ data_block; struct thin_c* tc; } ;


 int bio_endio (int ) ;
 int bio_io_error (int ) ;
 int cell_defer_no_holder (struct thin_c*,int ) ;
 int dm_pool_dec_data_range (int ,scalar_t__,scalar_t__) ;
 int mempool_free (struct dm_thin_new_mapping*,int *) ;
 int metadata_operation_failed (struct pool*,char*,int) ;

__attribute__((used)) static void process_prepared_discard_passdown_pt2(struct dm_thin_new_mapping *m)
{
 int r;
 struct thin_c *tc = m->tc;
 struct pool *pool = tc->pool;





 r = dm_pool_dec_data_range(pool->pmd, m->data_block,
       m->data_block + (m->virt_end - m->virt_begin));
 if (r) {
  metadata_operation_failed(pool, "dm_pool_dec_data_range", r);
  bio_io_error(m->bio);
 } else
  bio_endio(m->bio);

 cell_defer_no_holder(tc, m->cell);
 mempool_free(m, &pool->mapping_pool);
}
