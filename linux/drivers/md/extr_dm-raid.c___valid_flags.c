
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct raid_set {int raid_type; } ;


 unsigned long RAID0_VALID_FLAGS ;
 unsigned long RAID10_VALID_FLAGS ;
 unsigned long RAID1_VALID_FLAGS ;
 unsigned long RAID45_VALID_FLAGS ;
 unsigned long RAID6_VALID_FLAGS ;
 scalar_t__ rt_is_raid0 (int ) ;
 scalar_t__ rt_is_raid1 (int ) ;
 scalar_t__ rt_is_raid10 (int ) ;
 scalar_t__ rt_is_raid45 (int ) ;
 scalar_t__ rt_is_raid6 (int ) ;

__attribute__((used)) static unsigned long __valid_flags(struct raid_set *rs)
{
 if (rt_is_raid0(rs->raid_type))
  return RAID0_VALID_FLAGS;
 else if (rt_is_raid1(rs->raid_type))
  return RAID1_VALID_FLAGS;
 else if (rt_is_raid10(rs->raid_type))
  return RAID10_VALID_FLAGS;
 else if (rt_is_raid45(rs->raid_type))
  return RAID45_VALID_FLAGS;
 else if (rt_is_raid6(rs->raid_type))
  return RAID6_VALID_FLAGS;

 return 0;
}
