
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ chunksize; } ;
struct mddev {scalar_t__ recovery_cp; scalar_t__ resync_min; int recovery; int dev_sectors; scalar_t__ bitmap; TYPE_1__ bitmap_info; } ;
struct raid_set {int runtime_flags; int requested_bitmap_chunk_sectors; struct mddev md; } ;
struct dm_target {struct raid_set* private; } ;


 int DMERR (char*) ;
 int DMWARN (char*) ;
 int MD_RECOVERY_FROZEN ;
 int MD_RECOVERY_SYNC ;
 scalar_t__ MaxSector ;
 int RT_FLAG_RESHAPE_RS ;
 int RT_FLAG_RS_BITMAP_LOADED ;
 int RT_FLAG_RS_PRERESUMED ;
 int RT_FLAG_UPDATE_SBS ;
 int __load_dirty_region_bitmap (struct raid_set*) ;
 int md_bitmap_resize (scalar_t__,int ,scalar_t__,int ) ;
 int mddev_lock_nointr (struct mddev*) ;
 int mddev_unlock (struct mddev*) ;
 int rs_set_rdev_sectors (struct raid_set*) ;
 int rs_start_reshape (struct raid_set*) ;
 int rs_update_sbs (struct raid_set*) ;
 int set_bit (int ,int *) ;
 scalar_t__ test_and_set_bit (int ,int *) ;
 scalar_t__ test_bit (int ,int *) ;
 scalar_t__ to_bytes (int ) ;

__attribute__((used)) static int raid_preresume(struct dm_target *ti)
{
 int r;
 struct raid_set *rs = ti->private;
 struct mddev *mddev = &rs->md;


 if (test_and_set_bit(RT_FLAG_RS_PRERESUMED, &rs->runtime_flags))
  return 0;







 if (test_bit(RT_FLAG_UPDATE_SBS, &rs->runtime_flags))
  rs_update_sbs(rs);


 r = __load_dirty_region_bitmap(rs);
 if (r)
  return r;


 if (test_bit(RT_FLAG_RS_BITMAP_LOADED, &rs->runtime_flags) && mddev->bitmap &&
     mddev->bitmap_info.chunksize != to_bytes(rs->requested_bitmap_chunk_sectors)) {
  r = md_bitmap_resize(mddev->bitmap, mddev->dev_sectors,
         to_bytes(rs->requested_bitmap_chunk_sectors), 0);
  if (r)
   DMERR("Failed to resize bitmap");
 }



 set_bit(MD_RECOVERY_FROZEN, &mddev->recovery);
 if (mddev->recovery_cp && mddev->recovery_cp < MaxSector) {
  set_bit(MD_RECOVERY_SYNC, &mddev->recovery);
  mddev->resync_min = mddev->recovery_cp;
 }


 if (test_bit(RT_FLAG_RESHAPE_RS, &rs->runtime_flags)) {

  rs_set_rdev_sectors(rs);
  mddev_lock_nointr(mddev);
  r = rs_start_reshape(rs);
  mddev_unlock(mddev);
  if (r)
   DMWARN("Failed to check/start reshape, continuing without change");
  r = 0;
 }

 return r;
}
