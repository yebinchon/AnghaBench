
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void r0conf ;
struct mddev {int layout; int raid_disks; int degraded; int delta_disks; int recovery_cp; int chunk_sectors; int new_chunk_sectors; scalar_t__ new_layout; scalar_t__ new_level; } ;


 int EINVAL ;
 void* ERR_PTR (int ) ;
 int MaxSector ;
 int UNSUPPORTED_MDDEV_FLAGS ;
 int create_strip_zones (struct mddev*,void**) ;
 int mddev_clear_unsupported_flags (struct mddev*,int ) ;
 int mdname (struct mddev*) ;
 int pr_warn (char*,int ,...) ;

__attribute__((used)) static void *raid0_takeover_raid10(struct mddev *mddev)
{
 struct r0conf *priv_conf;







 if (mddev->layout != ((1 << 8) + 2)) {
  pr_warn("md/raid0:%s:: Raid0 cannot takeover layout: 0x%x\n",
   mdname(mddev),
   mddev->layout);
  return ERR_PTR(-EINVAL);
 }
 if (mddev->raid_disks & 1) {
  pr_warn("md/raid0:%s: Raid0 cannot takeover Raid10 with odd disk number.\n",
   mdname(mddev));
  return ERR_PTR(-EINVAL);
 }
 if (mddev->degraded != (mddev->raid_disks>>1)) {
  pr_warn("md/raid0:%s: All mirrors must be already degraded!\n",
   mdname(mddev));
  return ERR_PTR(-EINVAL);
 }


 mddev->new_level = 0;
 mddev->new_layout = 0;
 mddev->new_chunk_sectors = mddev->chunk_sectors;
 mddev->delta_disks = - mddev->raid_disks / 2;
 mddev->raid_disks += mddev->delta_disks;
 mddev->degraded = 0;

 mddev->recovery_cp = MaxSector;
 mddev_clear_unsupported_flags(mddev, UNSUPPORTED_MDDEV_FLAGS);

 create_strip_zones(mddev, &priv_conf);
 return priv_conf;
}
