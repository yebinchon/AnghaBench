
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mddev {int chunk_sectors; int new_chunk_sectors; int layout; int new_layout; int level; int new_level; } ;
struct raid_set {struct mddev md; } ;



__attribute__((used)) static void rs_set_cur(struct raid_set *rs)
{
 struct mddev *mddev = &rs->md;

 mddev->new_level = mddev->level;
 mddev->new_layout = mddev->layout;
 mddev->new_chunk_sectors = mddev->chunk_sectors;
}
