
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_integrity_io {scalar_t__ completion; int orig_bi_end_io; scalar_t__ orig_bi_integrity; int orig_bi_partno; int orig_bi_disk; int orig_bi_iter; } ;
struct bio {int bi_end_io; int bi_opf; scalar_t__ bi_integrity; int bi_partno; int bi_disk; int bi_iter; } ;


 int REQ_INTEGRITY ;
 int complete (scalar_t__) ;
 int dec_in_flight (struct dm_integrity_io*) ;
 struct dm_integrity_io* dm_per_bio_data (struct bio*,int) ;

__attribute__((used)) static void integrity_end_io(struct bio *bio)
{
 struct dm_integrity_io *dio = dm_per_bio_data(bio, sizeof(struct dm_integrity_io));

 bio->bi_iter = dio->orig_bi_iter;
 bio->bi_disk = dio->orig_bi_disk;
 bio->bi_partno = dio->orig_bi_partno;
 if (dio->orig_bi_integrity) {
  bio->bi_integrity = dio->orig_bi_integrity;
  bio->bi_opf |= REQ_INTEGRITY;
 }
 bio->bi_end_io = dio->orig_bi_end_io;

 if (dio->completion)
  complete(dio->completion);

 dec_in_flight(dio);
}
