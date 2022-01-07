
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int bi_sector; int bi_size; } ;
struct bio {TYPE_1__ bi_iter; struct bio* bi_private; } ;


 int bio_io_error (struct bio*) ;
 int bio_put (struct bio*) ;

__attribute__((used)) static void faulty_fail(struct bio *bio)
{
 struct bio *b = bio->bi_private;

 b->bi_iter.bi_size = bio->bi_iter.bi_size;
 b->bi_iter.bi_sector = bio->bi_iter.bi_sector;

 bio_put(bio);

 bio_io_error(b);
}
