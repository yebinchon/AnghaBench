
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mddev {scalar_t__ thread; int sb_flags; int pers; } ;
struct md_rdev {scalar_t__ raid_disk; int bdev; int flags; } ;
typedef int dev_t ;
struct TYPE_2__ {int (* remove_disk ) (struct mddev*,struct md_rdev*) ;} ;


 int BDEVNAME_SIZE ;
 int Blocked ;
 int EBUSY ;
 int ENODEV ;
 int ENXIO ;
 int MD_SB_CHANGE_DEVS ;
 int bdevname (int ,char*) ;
 int clear_bit (int ,int *) ;
 struct md_rdev* find_rdev (struct mddev*,int ) ;
 TYPE_1__* md_cluster_ops ;
 int md_kick_rdev_from_array (struct md_rdev*) ;
 int md_new_event (struct mddev*) ;
 int md_update_sb (struct mddev*,int) ;
 int md_wakeup_thread (scalar_t__) ;
 scalar_t__ mddev_is_clustered (struct mddev*) ;
 int mdname (struct mddev*) ;
 int pr_debug (char*,int ,int ) ;
 int remove_and_add_spares (struct mddev*,struct md_rdev*) ;
 int set_bit (int ,int *) ;
 int stub1 (struct mddev*,struct md_rdev*) ;

__attribute__((used)) static int hot_remove_disk(struct mddev *mddev, dev_t dev)
{
 char b[BDEVNAME_SIZE];
 struct md_rdev *rdev;

 if (!mddev->pers)
  return -ENODEV;

 rdev = find_rdev(mddev, dev);
 if (!rdev)
  return -ENXIO;

 if (rdev->raid_disk < 0)
  goto kick_rdev;

 clear_bit(Blocked, &rdev->flags);
 remove_and_add_spares(mddev, rdev);

 if (rdev->raid_disk >= 0)
  goto busy;

kick_rdev:
 if (mddev_is_clustered(mddev))
  md_cluster_ops->remove_disk(mddev, rdev);

 md_kick_rdev_from_array(rdev);
 set_bit(MD_SB_CHANGE_DEVS, &mddev->sb_flags);
 if (mddev->thread)
  md_wakeup_thread(mddev->thread);
 else
  md_update_sb(mddev, 1);
 md_new_event(mddev);

 return 0;
busy:
 pr_debug("md: cannot remove active disk %s from %s ...\n",
   bdevname(rdev->bdev,b), mdname(mddev));
 return -EBUSY;
}
