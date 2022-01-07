
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct r5l_log {scalar_t__ last_checkpoint; scalar_t__ device_size; TYPE_1__* rdev; } ;
struct mddev {int sb_flags; } ;
struct block_device {int dummy; } ;
typedef scalar_t__ sector_t ;
struct TYPE_2__ {scalar_t__ data_offset; struct mddev* mddev; struct block_device* bdev; } ;


 int BIT (int ) ;
 int GFP_NOIO ;
 int MD_SB_CHANGE_DEVS ;
 int MD_SB_CHANGE_PENDING ;
 int bdev_get_queue (struct block_device*) ;
 int blk_queue_discard (int ) ;
 int blkdev_issue_discard (struct block_device*,scalar_t__,scalar_t__,int ,int ) ;
 int md_update_sb (struct mddev*,int) ;
 int mddev_trylock (struct mddev*) ;
 int mddev_unlock (struct mddev*) ;
 int r5l_write_super (struct r5l_log*,scalar_t__) ;
 int set_mask_bits (int *,int ,int) ;

__attribute__((used)) static void r5l_write_super_and_discard_space(struct r5l_log *log,
 sector_t end)
{
 struct block_device *bdev = log->rdev->bdev;
 struct mddev *mddev;

 r5l_write_super(log, end);

 if (!blk_queue_discard(bdev_get_queue(bdev)))
  return;

 mddev = log->rdev->mddev;
 set_mask_bits(&mddev->sb_flags, 0,
  BIT(MD_SB_CHANGE_DEVS) | BIT(MD_SB_CHANGE_PENDING));
 if (!mddev_trylock(mddev))
  return;
 md_update_sb(mddev, 1);
 mddev_unlock(mddev);


 if (log->last_checkpoint < end) {
  blkdev_issue_discard(bdev,
    log->last_checkpoint + log->rdev->data_offset,
    end - log->last_checkpoint, GFP_NOIO, 0);
 } else {
  blkdev_issue_discard(bdev,
    log->last_checkpoint + log->rdev->data_offset,
    log->device_size - log->last_checkpoint,
    GFP_NOIO, 0);
  blkdev_issue_discard(bdev, log->rdev->data_offset, end,
    GFP_NOIO, 0);
 }
}
