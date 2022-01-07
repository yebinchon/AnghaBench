
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dm_mpath_io {int * pgpath; int nr_bytes; } ;
struct dm_bio_details {int dummy; } ;
struct TYPE_2__ {int bi_size; } ;
struct bio {TYPE_1__ bi_iter; } ;


 int dm_bio_record (struct dm_bio_details*,struct bio*) ;
 struct dm_bio_details* get_bio_details_from_mpio (struct dm_mpath_io*) ;
 struct dm_mpath_io* get_mpio_from_bio (struct bio*) ;

__attribute__((used)) static void multipath_init_per_bio_data(struct bio *bio, struct dm_mpath_io **mpio_p)
{
 struct dm_mpath_io *mpio = get_mpio_from_bio(bio);
 struct dm_bio_details *bio_details = get_bio_details_from_mpio(mpio);

 mpio->nr_bytes = bio->bi_iter.bi_size;
 mpio->pgpath = ((void*)0);
 *mpio_p = mpio;

 dm_bio_record(bio_details, bio);
}
