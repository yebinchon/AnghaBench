
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_hook_info {int * bi_end_io; } ;
struct bio {void* bi_private; int * bi_end_io; } ;
typedef int bio_end_io_t ;



__attribute__((used)) static void dm_hook_bio(struct dm_hook_info *h, struct bio *bio,
   bio_end_io_t *bi_end_io, void *bi_private)
{
 h->bi_end_io = bio->bi_end_io;

 bio->bi_end_io = bi_end_io;
 bio->bi_private = bi_private;
}
