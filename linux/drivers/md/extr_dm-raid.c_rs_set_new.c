
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mddev {scalar_t__ delta_disks; int raid_disks; int new_chunk_sectors; int chunk_sectors; int new_layout; int layout; int new_level; int level; } ;
struct raid_set {int raid_disks; struct mddev md; } ;



__attribute__((used)) static void rs_set_new(struct raid_set *rs)
{
 struct mddev *mddev = &rs->md;

 mddev->level = mddev->new_level;
 mddev->layout = mddev->new_layout;
 mddev->chunk_sectors = mddev->new_chunk_sectors;
 mddev->raid_disks = rs->raid_disks;
 mddev->delta_disks = 0;
}
