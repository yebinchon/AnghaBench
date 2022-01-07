
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mddev {int degraded; int level; int new_level; int raid_disks; int new_layout; int layout; unsigned int delta_disks; } ;
struct raid_set {int raid_disks; TYPE_1__* ti; struct mddev md; } ;
struct TYPE_2__ {char* error; } ;


 int ALGORITHM_LEFT_ASYMMETRIC ;
 int ALGORITHM_LEFT_ASYMMETRIC_6 ;
 int ALGORITHM_PARITY_N ;
 int ALGORITHM_RIGHT_SYMMETRIC ;
 int ALGORITHM_RIGHT_SYMMETRIC_6 ;
 int EINVAL ;
 int EPERM ;
 int __is_raid10_offset (int) ;
 int __raid10_far_copies (int) ;
 unsigned int __raid10_near_copies (int) ;
 int __within_range (int,int,int) ;
 unsigned int max (unsigned int,int) ;
 scalar_t__ rs_is_reshaping (struct raid_set*) ;

__attribute__((used)) static int rs_check_takeover(struct raid_set *rs)
{
 struct mddev *mddev = &rs->md;
 unsigned int near_copies;

 if (rs->md.degraded) {
  rs->ti->error = "Can't takeover degraded raid set";
  return -EPERM;
 }

 if (rs_is_reshaping(rs)) {
  rs->ti->error = "Can't takeover reshaping raid set";
  return -EPERM;
 }

 switch (mddev->level) {
 case 0:

  if ((mddev->new_level == 1 || mddev->new_level == 5) &&
      mddev->raid_disks == 1)
   return 0;


  if (mddev->new_level == 10 &&
      !(rs->raid_disks % mddev->raid_disks))
   return 0;


  if (__within_range(mddev->new_level, 4, 6) &&
      mddev->new_layout == ALGORITHM_PARITY_N &&
      mddev->raid_disks > 1)
   return 0;

  break;

 case 10:

  if (__is_raid10_offset(mddev->layout))
   break;

  near_copies = __raid10_near_copies(mddev->layout);


  if (mddev->new_level == 0) {

   if (near_copies > 1 &&
       !(mddev->raid_disks % near_copies)) {
    mddev->raid_disks /= near_copies;
    mddev->delta_disks = mddev->raid_disks;
    return 0;
   }


   if (near_copies == 1 &&
       __raid10_far_copies(mddev->layout) > 1)
    return 0;

   break;
  }


  if (mddev->new_level == 1 &&
      max(near_copies, __raid10_far_copies(mddev->layout)) == mddev->raid_disks)
   return 0;


  if (__within_range(mddev->new_level, 4, 5) &&
      mddev->raid_disks == 2)
   return 0;
  break;

 case 1:

  if (__within_range(mddev->new_level, 4, 5) &&
      mddev->raid_disks == 2) {
   mddev->degraded = 1;
   return 0;
  }


  if (mddev->new_level == 0 &&
      mddev->raid_disks == 1)
   return 0;


  if (mddev->new_level == 10)
   return 0;
  break;

 case 4:

  if (mddev->new_level == 0)
   return 0;


  if ((mddev->new_level == 1 || mddev->new_level == 5) &&
      mddev->raid_disks == 2)
   return 0;


  if (__within_range(mddev->new_level, 5, 6) &&
      mddev->layout == ALGORITHM_PARITY_N)
   return 0;
  break;

 case 5:

  if (mddev->new_level == 0 &&
      mddev->layout == ALGORITHM_PARITY_N)
   return 0;


  if (mddev->new_level == 4 &&
      mddev->layout == ALGORITHM_PARITY_N)
   return 0;


  if ((mddev->new_level == 1 || mddev->new_level == 4 || mddev->new_level == 10) &&
      mddev->raid_disks == 2)
   return 0;


  if (mddev->new_level == 6 &&
      ((mddev->layout == ALGORITHM_PARITY_N && mddev->new_layout == ALGORITHM_PARITY_N) ||
        __within_range(mddev->new_layout, ALGORITHM_LEFT_ASYMMETRIC_6, ALGORITHM_RIGHT_SYMMETRIC_6)))
   return 0;
  break;

 case 6:

  if (mddev->new_level == 0 &&
      mddev->layout == ALGORITHM_PARITY_N)
   return 0;


  if (mddev->new_level == 4 &&
      mddev->layout == ALGORITHM_PARITY_N)
   return 0;


  if (mddev->new_level == 5 &&
      ((mddev->layout == ALGORITHM_PARITY_N && mddev->new_layout == ALGORITHM_PARITY_N) ||
       __within_range(mddev->new_layout, ALGORITHM_LEFT_ASYMMETRIC, ALGORITHM_RIGHT_SYMMETRIC)))
   return 0;

 default:
  break;
 }

 rs->ti->error = "takeover not possible";
 return -EINVAL;
}
