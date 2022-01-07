
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct dmz_target {int metadata; TYPE_1__* dev; int bio_set; } ;
struct dmz_bioctx {int ref; } ;
struct dm_zone {unsigned int wp_block; } ;
struct TYPE_4__ {int bi_size; scalar_t__ bi_sector; } ;
struct bio {TYPE_2__ bi_iter; struct dmz_bioctx* bi_private; int bi_end_io; } ;
typedef unsigned int sector_t ;
struct TYPE_3__ {int bdev; } ;


 int ENOMEM ;
 int GFP_NOIO ;
 scalar_t__ REQ_OP_WRITE ;
 int SECTOR_SHIFT ;
 int bio_advance (struct bio*,int) ;
 struct bio* bio_clone_fast (struct bio*,int ,int *) ;
 scalar_t__ bio_op (struct bio*) ;
 int bio_set_dev (struct bio*,int ) ;
 struct dmz_bioctx* dm_per_bio_data (struct bio*,int) ;
 int dmz_blk2sect (unsigned int) ;
 int dmz_clone_endio ;
 scalar_t__ dmz_is_seq (struct dm_zone*) ;
 scalar_t__ dmz_start_sect (int ,struct dm_zone*) ;
 int generic_make_request (struct bio*) ;
 int refcount_inc (int *) ;

__attribute__((used)) static int dmz_submit_bio(struct dmz_target *dmz, struct dm_zone *zone,
     struct bio *bio, sector_t chunk_block,
     unsigned int nr_blocks)
{
 struct dmz_bioctx *bioctx = dm_per_bio_data(bio, sizeof(struct dmz_bioctx));
 struct bio *clone;

 clone = bio_clone_fast(bio, GFP_NOIO, &dmz->bio_set);
 if (!clone)
  return -ENOMEM;

 bio_set_dev(clone, dmz->dev->bdev);
 clone->bi_iter.bi_sector =
  dmz_start_sect(dmz->metadata, zone) + dmz_blk2sect(chunk_block);
 clone->bi_iter.bi_size = dmz_blk2sect(nr_blocks) << SECTOR_SHIFT;
 clone->bi_end_io = dmz_clone_endio;
 clone->bi_private = bioctx;

 bio_advance(bio, clone->bi_iter.bi_size);

 refcount_inc(&bioctx->ref);
 generic_make_request(clone);

 if (bio_op(bio) == REQ_OP_WRITE && dmz_is_seq(zone))
  zone->wp_block += nr_blocks;

 return 0;
}
