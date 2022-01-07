
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mddev {scalar_t__ raid_disks; int degraded; int layout; int new_layout; } ;
struct raid_set {scalar_t__ raid_disks; scalar_t__ raid10_copies; int delta_disks; int runtime_flags; TYPE_1__* ti; struct mddev md; } ;
struct TYPE_2__ {char* error; } ;


 int ALGORITHM_RAID10_NEAR ;
 int EINVAL ;
 int RT_FLAG_RESHAPE_RS ;
 int RT_FLAG_UPDATE_SBS ;
 scalar_t__ __is_raid10_near (int ) ;
 scalar_t__ __raid10_near_copies (int ) ;
 int __reorder_raid_disk_indexes (struct raid_set*) ;
 int raid10_format_to_md_layout (struct raid_set*,int ,int) ;
 scalar_t__ rs_is_raid1 (struct raid_set*) ;
 scalar_t__ rs_is_raid10 (struct raid_set*) ;
 scalar_t__ rs_is_raid456 (struct raid_set*) ;
 int set_bit (int ,int *) ;

__attribute__((used)) static int rs_prepare_reshape(struct raid_set *rs)
{
 bool reshape;
 struct mddev *mddev = &rs->md;

 if (rs_is_raid10(rs)) {
  if (rs->raid_disks != mddev->raid_disks &&
      __is_raid10_near(mddev->layout) &&
      rs->raid10_copies &&
      rs->raid10_copies != __raid10_near_copies(mddev->layout)) {






   if (rs->raid_disks % rs->raid10_copies) {
    rs->ti->error = "Can't reshape raid10 mirror groups";
    return -EINVAL;
   }


   __reorder_raid_disk_indexes(rs);
   mddev->layout = raid10_format_to_md_layout(rs, ALGORITHM_RAID10_NEAR,
           rs->raid10_copies);
   mddev->new_layout = mddev->layout;
   reshape = 0;
  } else
   reshape = 1;

 } else if (rs_is_raid456(rs))
  reshape = 1;

 else if (rs_is_raid1(rs)) {
  if (rs->delta_disks) {

   mddev->degraded = rs->delta_disks < 0 ? -rs->delta_disks : rs->delta_disks;
   reshape = 1;
  } else {

   mddev->raid_disks = rs->raid_disks;
   reshape = 0;
  }
 } else {
  rs->ti->error = "Called with bogus raid type";
  return -EINVAL;
 }

 if (reshape) {
  set_bit(RT_FLAG_RESHAPE_RS, &rs->runtime_flags);
  set_bit(RT_FLAG_UPDATE_SBS, &rs->runtime_flags);
 } else if (mddev->raid_disks < rs->raid_disks)

  set_bit(RT_FLAG_UPDATE_SBS, &rs->runtime_flags);

 return 0;
}
