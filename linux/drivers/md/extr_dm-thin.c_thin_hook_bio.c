
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thin_c {int dummy; } ;
struct dm_thin_endio_hook {int * cell; int * overwrite_mapping; int * all_io_entry; int * shared_read_entry; struct thin_c* tc; } ;
struct bio {int dummy; } ;


 struct dm_thin_endio_hook* dm_per_bio_data (struct bio*,int) ;

__attribute__((used)) static void thin_hook_bio(struct thin_c *tc, struct bio *bio)
{
 struct dm_thin_endio_hook *h = dm_per_bio_data(bio, sizeof(struct dm_thin_endio_hook));

 h->tc = tc;
 h->shared_read_entry = ((void*)0);
 h->all_io_entry = ((void*)0);
 h->overwrite_mapping = ((void*)0);
 h->cell = ((void*)0);
}
