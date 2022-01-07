
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rs_layout {int new_chunk_sectors; int new_layout; int new_level; } ;
struct mddev {int new_chunk_sectors; int new_layout; int new_level; } ;
struct raid_set {struct mddev md; } ;



__attribute__((used)) static void rs_config_backup(struct raid_set *rs, struct rs_layout *l)
{
 struct mddev *mddev = &rs->md;

 l->new_level = mddev->new_level;
 l->new_layout = mddev->new_layout;
 l->new_chunk_sectors = mddev->new_chunk_sectors;
}
