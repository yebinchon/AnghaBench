
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_thin_new_mapping {int status; int saved_bi_end_io; } ;
struct dm_thin_endio_hook {struct dm_thin_new_mapping* overwrite_mapping; } ;
struct bio {int bi_status; int bi_end_io; } ;


 int complete_mapping_preparation (struct dm_thin_new_mapping*) ;
 struct dm_thin_endio_hook* dm_per_bio_data (struct bio*,int) ;

__attribute__((used)) static void overwrite_endio(struct bio *bio)
{
 struct dm_thin_endio_hook *h = dm_per_bio_data(bio, sizeof(struct dm_thin_endio_hook));
 struct dm_thin_new_mapping *m = h->overwrite_mapping;

 bio->bi_end_io = m->saved_bi_end_io;

 m->status = bio->bi_status;
 complete_mapping_preparation(m);
}
