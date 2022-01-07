
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pool {int all_io_ds; } ;
struct dm_thin_endio_hook {int all_io_entry; } ;
struct bio {int dummy; } ;


 scalar_t__ REQ_OP_DISCARD ;
 scalar_t__ bio_op (struct bio*) ;
 int dm_deferred_entry_inc (int ) ;
 struct dm_thin_endio_hook* dm_per_bio_data (struct bio*,int) ;

__attribute__((used)) static void inc_all_io_entry(struct pool *pool, struct bio *bio)
{
 struct dm_thin_endio_hook *h;

 if (bio_op(bio) == REQ_OP_DISCARD)
  return;

 h = dm_per_bio_data(bio, sizeof(struct dm_thin_endio_hook));
 h->all_io_entry = dm_deferred_entry_inc(pool->all_io_ds);
}
