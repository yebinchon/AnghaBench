
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dmz_bioctx {struct dm_zone* zone; int ref; } ;
struct dm_zone {int flags; } ;
struct bio {scalar_t__ bi_status; } ;
typedef scalar_t__ blk_status_t ;


 scalar_t__ BLK_STS_OK ;
 int DMZ_SEQ_WRITE_ERR ;
 scalar_t__ REQ_OP_WRITE ;
 int bio_endio (struct bio*) ;
 scalar_t__ bio_op (struct bio*) ;
 struct dmz_bioctx* dm_per_bio_data (struct bio*,int) ;
 int dmz_deactivate_zone (struct dm_zone*) ;
 scalar_t__ dmz_is_seq (struct dm_zone*) ;
 scalar_t__ refcount_dec_and_test (int *) ;
 int set_bit (int ,int *) ;

__attribute__((used)) static inline void dmz_bio_endio(struct bio *bio, blk_status_t status)
{
 struct dmz_bioctx *bioctx = dm_per_bio_data(bio, sizeof(struct dmz_bioctx));

 if (status != BLK_STS_OK && bio->bi_status == BLK_STS_OK)
  bio->bi_status = status;

 if (refcount_dec_and_test(&bioctx->ref)) {
  struct dm_zone *zone = bioctx->zone;

  if (zone) {
   if (bio->bi_status != BLK_STS_OK &&
       bio_op(bio) == REQ_OP_WRITE &&
       dmz_is_seq(zone))
    set_bit(DMZ_SEQ_WRITE_ERR, &zone->flags);
   dmz_deactivate_zone(zone);
  }
  bio_endio(bio);
 }
}
