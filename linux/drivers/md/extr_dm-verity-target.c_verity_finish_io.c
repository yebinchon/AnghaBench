
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dm_verity_io {int orig_bi_end_io; struct dm_verity* v; } ;
struct dm_verity {TYPE_1__* ti; } ;
struct bio {int bi_status; int bi_end_io; } ;
typedef int blk_status_t ;
struct TYPE_2__ {int per_io_data_size; } ;


 int bio_endio (struct bio*) ;
 struct bio* dm_bio_from_per_bio_data (struct dm_verity_io*,int ) ;
 int verity_fec_finish_io (struct dm_verity_io*) ;

__attribute__((used)) static void verity_finish_io(struct dm_verity_io *io, blk_status_t status)
{
 struct dm_verity *v = io->v;
 struct bio *bio = dm_bio_from_per_bio_data(io, v->ti->per_io_data_size);

 bio->bi_end_io = io->orig_bi_end_io;
 bio->bi_status = status;

 verity_fec_finish_io(io);

 bio_endio(bio);
}
