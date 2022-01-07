
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bio {int * bi_end_io; } ;
typedef int bio_end_io_t ;



__attribute__((used)) static void save_and_set_endio(struct bio *bio, bio_end_io_t **save,
          bio_end_io_t *fn)
{
 *save = bio->bi_end_io;
 bio->bi_end_io = fn;
}
