
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct raid1_info {int raid_disks; struct md_rdev* rdev; struct mddev* mddev; } ;
struct r1conf {int raid_disks; int device_lock; struct raid1_info* poolinfo; struct raid1_info* mirrors; int r1bio_pool; } ;
struct pool_info {int raid_disks; struct md_rdev* rdev; struct mddev* mddev; } ;
struct mddev {scalar_t__ chunk_sectors; scalar_t__ new_chunk_sectors; scalar_t__ layout; scalar_t__ new_layout; scalar_t__ level; scalar_t__ new_level; int raid_disks; int delta_disks; int degraded; int thread; int recovery; struct r1conf* private; } ;
struct md_rdev {int raid_disk; } ;
typedef int oldpool ;
typedef int newpool ;
typedef int mempool_t ;


 int EBUSY ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int MD_RECOVERY_NEEDED ;
 int MD_RECOVERY_RECOVER ;
 int NR_RAID_BIOS ;
 int array3_size (int,int,int) ;
 int freeze_array (struct r1conf*,int ) ;
 int kfree (struct raid1_info*) ;
 struct raid1_info* kmalloc (int,int ) ;
 struct raid1_info* kzalloc (int ,int ) ;
 int md_allow_write (struct mddev*) ;
 int md_wakeup_thread (int ) ;
 int mddev_is_clustered (struct mddev*) ;
 int mdname (struct mddev*) ;
 int mempool_exit (int *) ;
 int mempool_init (int *,int ,int ,int ,struct raid1_info*) ;
 int memset (int *,int ,int) ;
 int pr_warn (char*,int ,int) ;
 int r1bio_pool_alloc ;
 int rbio_pool_free ;
 int set_bit (int ,int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ sysfs_link_rdev (struct mddev*,struct md_rdev*) ;
 int sysfs_unlink_rdev (struct mddev*,struct md_rdev*) ;
 int unfreeze_array (struct r1conf*) ;

__attribute__((used)) static int raid1_reshape(struct mddev *mddev)
{
 mempool_t newpool, oldpool;
 struct pool_info *newpoolinfo;
 struct raid1_info *newmirrors;
 struct r1conf *conf = mddev->private;
 int cnt, raid_disks;
 unsigned long flags;
 int d, d2;
 int ret;

 memset(&newpool, 0, sizeof(newpool));
 memset(&oldpool, 0, sizeof(oldpool));


 if (mddev->chunk_sectors != mddev->new_chunk_sectors ||
     mddev->layout != mddev->new_layout ||
     mddev->level != mddev->new_level) {
  mddev->new_chunk_sectors = mddev->chunk_sectors;
  mddev->new_layout = mddev->layout;
  mddev->new_level = mddev->level;
  return -EINVAL;
 }

 if (!mddev_is_clustered(mddev))
  md_allow_write(mddev);

 raid_disks = mddev->raid_disks + mddev->delta_disks;

 if (raid_disks < conf->raid_disks) {
  cnt=0;
  for (d= 0; d < conf->raid_disks; d++)
   if (conf->mirrors[d].rdev)
    cnt++;
  if (cnt > raid_disks)
   return -EBUSY;
 }

 newpoolinfo = kmalloc(sizeof(*newpoolinfo), GFP_KERNEL);
 if (!newpoolinfo)
  return -ENOMEM;
 newpoolinfo->mddev = mddev;
 newpoolinfo->raid_disks = raid_disks * 2;

 ret = mempool_init(&newpool, NR_RAID_BIOS, r1bio_pool_alloc,
      rbio_pool_free, newpoolinfo);
 if (ret) {
  kfree(newpoolinfo);
  return ret;
 }
 newmirrors = kzalloc(array3_size(sizeof(struct raid1_info),
      raid_disks, 2),
        GFP_KERNEL);
 if (!newmirrors) {
  kfree(newpoolinfo);
  mempool_exit(&newpool);
  return -ENOMEM;
 }

 freeze_array(conf, 0);


 oldpool = conf->r1bio_pool;
 conf->r1bio_pool = newpool;

 for (d = d2 = 0; d < conf->raid_disks; d++) {
  struct md_rdev *rdev = conf->mirrors[d].rdev;
  if (rdev && rdev->raid_disk != d2) {
   sysfs_unlink_rdev(mddev, rdev);
   rdev->raid_disk = d2;
   sysfs_unlink_rdev(mddev, rdev);
   if (sysfs_link_rdev(mddev, rdev))
    pr_warn("md/raid1:%s: cannot register rd%d\n",
     mdname(mddev), rdev->raid_disk);
  }
  if (rdev)
   newmirrors[d2++].rdev = rdev;
 }
 kfree(conf->mirrors);
 conf->mirrors = newmirrors;
 kfree(conf->poolinfo);
 conf->poolinfo = newpoolinfo;

 spin_lock_irqsave(&conf->device_lock, flags);
 mddev->degraded += (raid_disks - conf->raid_disks);
 spin_unlock_irqrestore(&conf->device_lock, flags);
 conf->raid_disks = mddev->raid_disks = raid_disks;
 mddev->delta_disks = 0;

 unfreeze_array(conf);

 set_bit(MD_RECOVERY_RECOVER, &mddev->recovery);
 set_bit(MD_RECOVERY_NEEDED, &mddev->recovery);
 md_wakeup_thread(mddev->thread);

 mempool_exit(&oldpool);
 return 0;
}
