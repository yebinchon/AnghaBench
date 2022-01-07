
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_target {int dummy; } ;
struct bio {int bi_opf; } ;


 int DM_MAPIO_KILL ;
 int DM_MAPIO_SUBMITTED ;


 int REQ_RAHEAD ;
 int bio_endio (struct bio*) ;
 int bio_op (struct bio*) ;
 int zero_fill_bio (struct bio*) ;

__attribute__((used)) static int zero_map(struct dm_target *ti, struct bio *bio)
{
 switch (bio_op(bio)) {
 case 129:
  if (bio->bi_opf & REQ_RAHEAD) {

   return DM_MAPIO_KILL;
  }
  zero_fill_bio(bio);
  break;
 case 128:

  break;
 default:
  return DM_MAPIO_KILL;
 }

 bio_endio(bio);


 return DM_MAPIO_SUBMITTED;
}
