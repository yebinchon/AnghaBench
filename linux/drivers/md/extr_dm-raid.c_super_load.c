
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
struct md_rdev {int sb_page; TYPE_1__* mddev; int flags; int recovery_offset; int sb_size; } ;
struct dm_raid_superblock {scalar_t__ magic; int events; scalar_t__ compat_features; } ;
struct TYPE_2__ {int sb_flags; } ;


 int DM_RAID_MAGIC ;
 int FEATURE_FLAG_SUPPORTS_V190 ;
 int FirstUse ;
 int In_sync ;
 int MD_SB_CHANGE_DEVS ;
 scalar_t__ cpu_to_le32 (int ) ;
 scalar_t__ le64_to_cpu (int ) ;
 struct dm_raid_superblock* page_address (int ) ;
 int read_disk_sb (struct md_rdev*,int ,int) ;
 int set_bit (int ,int *) ;
 int super_sync (TYPE_1__*,struct md_rdev*) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static int super_load(struct md_rdev *rdev, struct md_rdev *refdev)
{
 int r;
 struct dm_raid_superblock *sb;
 struct dm_raid_superblock *refsb;
 uint64_t events_sb, events_refsb;

 r = read_disk_sb(rdev, rdev->sb_size, 0);
 if (r)
  return r;

 sb = page_address(rdev->sb_page);






 if ((sb->magic != cpu_to_le32(DM_RAID_MAGIC)) ||
     (!test_bit(In_sync, &rdev->flags) && !rdev->recovery_offset)) {
  super_sync(rdev->mddev, rdev);

  set_bit(FirstUse, &rdev->flags);
  sb->compat_features = cpu_to_le32(FEATURE_FLAG_SUPPORTS_V190);


  set_bit(MD_SB_CHANGE_DEVS, &rdev->mddev->sb_flags);


  return refdev ? 0 : 1;
 }

 if (!refdev)
  return 1;

 events_sb = le64_to_cpu(sb->events);

 refsb = page_address(refdev->sb_page);
 events_refsb = le64_to_cpu(refsb->events);

 return (events_sb > events_refsb) ? 1 : 0;
}
