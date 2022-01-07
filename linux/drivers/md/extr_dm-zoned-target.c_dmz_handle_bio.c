
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct dmz_target {TYPE_1__* dev; int reclaim; struct dmz_metadata* metadata; } ;
struct dmz_metadata {int dummy; } ;
struct dmz_bioctx {struct dm_zone* zone; } ;
struct dm_zone {int dummy; } ;
struct dm_chunk_work {int dummy; } ;
struct bio {int dummy; } ;
struct TYPE_3__ {int flags; } ;


 int DMZ_BDEV_DYING ;
 int EIO ;
 scalar_t__ IS_ERR (struct dm_zone*) ;
 int PTR_ERR (struct dm_zone*) ;




 int bio_op (struct bio*) ;
 struct dmz_bioctx* dm_per_bio_data (struct bio*,int) ;
 int dmz_activate_zone (struct dm_zone*) ;
 int dmz_bio_chunk (TYPE_1__*,struct bio*) ;
 int dmz_bio_endio (struct bio*,int ) ;
 int dmz_dev_err (TYPE_1__*,char*,int) ;
 struct dm_zone* dmz_get_chunk_mapping (struct dmz_metadata*,int ,int) ;
 int dmz_handle_discard (struct dmz_target*,struct dm_zone*,struct bio*) ;
 int dmz_handle_read (struct dmz_target*,struct dm_zone*,struct bio*) ;
 int dmz_handle_write (struct dmz_target*,struct dm_zone*,struct bio*) ;
 int dmz_lock_metadata (struct dmz_metadata*) ;
 int dmz_put_chunk_mapping (struct dmz_metadata*,struct dm_zone*) ;
 int dmz_schedule_reclaim (int ) ;
 int dmz_unlock_metadata (struct dmz_metadata*) ;
 int errno_to_blk_status (int) ;

__attribute__((used)) static void dmz_handle_bio(struct dmz_target *dmz, struct dm_chunk_work *cw,
      struct bio *bio)
{
 struct dmz_bioctx *bioctx = dm_per_bio_data(bio, sizeof(struct dmz_bioctx));
 struct dmz_metadata *zmd = dmz->metadata;
 struct dm_zone *zone;
 int ret;





 if (bio_op(bio) == 129)
  dmz_schedule_reclaim(dmz->reclaim);

 dmz_lock_metadata(zmd);

 if (dmz->dev->flags & DMZ_BDEV_DYING) {
  ret = -EIO;
  goto out;
 }






 zone = dmz_get_chunk_mapping(zmd, dmz_bio_chunk(dmz->dev, bio),
         bio_op(bio));
 if (IS_ERR(zone)) {
  ret = PTR_ERR(zone);
  goto out;
 }


 if (zone) {
  dmz_activate_zone(zone);
  bioctx->zone = zone;
 }

 switch (bio_op(bio)) {
 case 130:
  ret = dmz_handle_read(dmz, zone, bio);
  break;
 case 129:
  ret = dmz_handle_write(dmz, zone, bio);
  break;
 case 131:
 case 128:
  ret = dmz_handle_discard(dmz, zone, bio);
  break;
 default:
  dmz_dev_err(dmz->dev, "Unsupported BIO operation 0x%x",
       bio_op(bio));
  ret = -EIO;
 }





 if (zone)
  dmz_put_chunk_mapping(zmd, zone);
out:
 dmz_bio_endio(bio, errno_to_blk_status(ret));

 dmz_unlock_metadata(zmd);
}
