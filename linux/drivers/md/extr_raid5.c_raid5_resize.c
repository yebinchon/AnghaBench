
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct r5conf {scalar_t__ chunk_sectors; } ;
struct mddev {scalar_t__ array_sectors; scalar_t__ dev_sectors; scalar_t__ recovery_cp; scalar_t__ resync_max_sectors; int recovery; scalar_t__ bitmap; scalar_t__ external_size; int raid_disks; struct r5conf* private; } ;
typedef scalar_t__ sector_t ;


 int EINVAL ;
 int MD_RECOVERY_NEEDED ;
 int md_bitmap_resize (scalar_t__,scalar_t__,int ,int ) ;
 int md_set_array_sectors (struct mddev*,scalar_t__) ;
 scalar_t__ raid5_has_log (struct r5conf*) ;
 scalar_t__ raid5_has_ppl (struct r5conf*) ;
 scalar_t__ raid5_size (struct mddev*,scalar_t__,int ) ;
 int set_bit (int ,int *) ;

__attribute__((used)) static int raid5_resize(struct mddev *mddev, sector_t sectors)
{







 sector_t newsize;
 struct r5conf *conf = mddev->private;

 if (raid5_has_log(conf) || raid5_has_ppl(conf))
  return -EINVAL;
 sectors &= ~((sector_t)conf->chunk_sectors - 1);
 newsize = raid5_size(mddev, sectors, mddev->raid_disks);
 if (mddev->external_size &&
     mddev->array_sectors > newsize)
  return -EINVAL;
 if (mddev->bitmap) {
  int ret = md_bitmap_resize(mddev->bitmap, sectors, 0, 0);
  if (ret)
   return ret;
 }
 md_set_array_sectors(mddev, newsize);
 if (sectors > mddev->dev_sectors &&
     mddev->recovery_cp > mddev->dev_sectors) {
  mddev->recovery_cp = mddev->dev_sectors;
  set_bit(MD_RECOVERY_NEEDED, &mddev->recovery);
 }
 mddev->dev_sectors = sectors;
 mddev->resync_max_sectors = sectors;
 return 0;
}
