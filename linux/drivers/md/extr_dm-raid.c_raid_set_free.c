
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ dev; int rdev; } ;
struct raid_set {int raid_disks; TYPE_2__* dev; int ti; TYPE_1__ journal_dev; } ;
struct TYPE_4__ {scalar_t__ data_dev; int rdev; scalar_t__ meta_dev; } ;


 int dm_put_device (int ,scalar_t__) ;
 int kfree (struct raid_set*) ;
 int md_rdev_clear (int *) ;

__attribute__((used)) static void raid_set_free(struct raid_set *rs)
{
 int i;

 if (rs->journal_dev.dev) {
  md_rdev_clear(&rs->journal_dev.rdev);
  dm_put_device(rs->ti, rs->journal_dev.dev);
 }

 for (i = 0; i < rs->raid_disks; i++) {
  if (rs->dev[i].meta_dev)
   dm_put_device(rs->ti, rs->dev[i].meta_dev);
  md_rdev_clear(&rs->dev[i].rdev);
  if (rs->dev[i].data_dev)
   dm_put_device(rs->ti, rs->dev[i].data_dev);
 }

 kfree(rs);
}
