
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thin_c {struct pool* pool; } ;
struct pool {int dummy; } ;
struct dm_thin_new_mapping {int saved_bi_end_io; struct bio* bio; } ;
struct dm_thin_endio_hook {struct dm_thin_new_mapping* overwrite_mapping; } ;
struct bio {int dummy; } ;
typedef int dm_block_t ;


 struct dm_thin_endio_hook* dm_per_bio_data (struct bio*,int) ;
 int inc_all_io_entry (struct pool*,struct bio*) ;
 int overwrite_endio ;
 int remap_and_issue (struct thin_c*,struct bio*,int ) ;
 int save_and_set_endio (struct bio*,int *,int ) ;

__attribute__((used)) static void remap_and_issue_overwrite(struct thin_c *tc, struct bio *bio,
          dm_block_t data_begin,
          struct dm_thin_new_mapping *m)
{
 struct pool *pool = tc->pool;
 struct dm_thin_endio_hook *h = dm_per_bio_data(bio, sizeof(struct dm_thin_endio_hook));

 h->overwrite_mapping = m;
 m->bio = bio;
 save_and_set_endio(bio, &m->saved_bi_end_io, overwrite_endio);
 inc_all_io_entry(pool, bio);
 remap_and_issue(tc, bio, data_begin);
}
