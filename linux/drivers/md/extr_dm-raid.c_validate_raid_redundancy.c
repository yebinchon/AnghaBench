
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {unsigned int raid_disks; int level; int new_layout; } ;
struct raid_set {TYPE_4__* dev; TYPE_2__ md; TYPE_1__* raid_type; } ;
struct TYPE_7__ {int flags; int sb_page; } ;
struct TYPE_8__ {TYPE_3__ rdev; } ;
struct TYPE_5__ {unsigned int parity_devs; } ;


 int DMERR (char*) ;
 int EINVAL ;
 int In_sync ;
 int __is_raid10_near (int ) ;
 unsigned int raid10_md_layout_to_copies (int ) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static int validate_raid_redundancy(struct raid_set *rs)
{
 unsigned int i, rebuild_cnt = 0;
 unsigned int rebuilds_per_group = 0, copies;
 unsigned int group_size, last_group_start;

 for (i = 0; i < rs->md.raid_disks; i++)
  if (!test_bit(In_sync, &rs->dev[i].rdev.flags) ||
      !rs->dev[i].rdev.sb_page)
   rebuild_cnt++;

 switch (rs->md.level) {
 case 0:
  break;
 case 1:
  if (rebuild_cnt >= rs->md.raid_disks)
   goto too_many;
  break;
 case 4:
 case 5:
 case 6:
  if (rebuild_cnt > rs->raid_type->parity_devs)
   goto too_many;
  break;
 case 10:
  copies = raid10_md_layout_to_copies(rs->md.new_layout);
  if (copies < 2) {
   DMERR("Bogus raid10 data copies < 2!");
   return -EINVAL;
  }

  if (rebuild_cnt < copies)
   break;
  if (__is_raid10_near(rs->md.new_layout)) {
   for (i = 0; i < rs->md.raid_disks; i++) {
    if (!(i % copies))
     rebuilds_per_group = 0;
    if ((!rs->dev[i].rdev.sb_page ||
        !test_bit(In_sync, &rs->dev[i].rdev.flags)) &&
        (++rebuilds_per_group >= copies))
     goto too_many;
   }
   break;
  }
  group_size = (rs->md.raid_disks / copies);
  last_group_start = (rs->md.raid_disks / group_size) - 1;
  last_group_start *= group_size;
  for (i = 0; i < rs->md.raid_disks; i++) {
   if (!(i % copies) && !(i > last_group_start))
    rebuilds_per_group = 0;
   if ((!rs->dev[i].rdev.sb_page ||
        !test_bit(In_sync, &rs->dev[i].rdev.flags)) &&
       (++rebuilds_per_group >= copies))
     goto too_many;
  }
  break;
 default:
  if (rebuild_cnt)
   return -EINVAL;
 }

 return 0;

too_many:
 return -EINVAL;
}
