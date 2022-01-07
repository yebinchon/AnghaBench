
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mddev {scalar_t__ degraded; TYPE_1__* pers; } ;
struct raid_set {TYPE_2__* ti; struct mddev md; } ;
struct TYPE_4__ {char* error; } ;
struct TYPE_3__ {int check_reshape; } ;


 int EPERM ;
 scalar_t__ rs_is_raid1 (struct raid_set*) ;
 scalar_t__ rs_is_raid10 (struct raid_set*) ;
 scalar_t__ rs_is_raid456 (struct raid_set*) ;
 scalar_t__ rs_is_recovering (struct raid_set*) ;
 scalar_t__ rs_is_reshaping (struct raid_set*) ;

__attribute__((used)) static int rs_check_reshape(struct raid_set *rs)
{
 struct mddev *mddev = &rs->md;

 if (!mddev->pers || !mddev->pers->check_reshape)
  rs->ti->error = "Reshape not supported";
 else if (mddev->degraded)
  rs->ti->error = "Can't reshape degraded raid set";
 else if (rs_is_recovering(rs))
  rs->ti->error = "Convert request on recovering raid set prohibited";
 else if (rs_is_reshaping(rs))
  rs->ti->error = "raid set already reshaping!";
 else if (!(rs_is_raid1(rs) || rs_is_raid10(rs) || rs_is_raid456(rs)))
  rs->ti->error = "Reshaping only supported for raid1/4/5/6/10";
 else
  return 0;

 return -EPERM;
}
