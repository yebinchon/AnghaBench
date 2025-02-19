
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct io {int dummy; } ;
struct bio {scalar_t__ bi_status; } ;
typedef scalar_t__ blk_status_t ;


 scalar_t__ READ ;
 scalar_t__ bio_data_dir (struct bio*) ;
 int bio_put (struct bio*) ;
 int dec_count (struct io*,unsigned int,scalar_t__) ;
 int retrieve_io_and_region_from_bio (struct bio*,struct io**,unsigned int*) ;
 int zero_fill_bio (struct bio*) ;

__attribute__((used)) static void endio(struct bio *bio)
{
 struct io *io;
 unsigned region;
 blk_status_t error;

 if (bio->bi_status && bio_data_dir(bio) == READ)
  zero_fill_bio(bio);




 retrieve_io_and_region_from_bio(bio, &io, &region);

 error = bio->bi_status;
 bio_put(bio);

 dec_count(io, region, error);
}
