
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ dev; } ;
struct TYPE_6__ {int offset; int default_offset; } ;
struct mddev {TYPE_3__ bitmap_info; int events; } ;
struct raid_set {TYPE_2__ journal_dev; int raid_type; TYPE_1__* ti; struct mddev md; } ;
struct md_rdev {scalar_t__ raid_disk; scalar_t__ saved_raid_disk; void* new_data_offset; void* data_offset; int flags; void* recovery_offset; void* sectors; int sb_page; } ;
struct dm_raid_superblock {int new_data_offset; int data_offset; int disk_recovery_offset; int sectors; int compat_features; scalar_t__ incompat_features; } ;
struct TYPE_4__ {char* error; } ;


 int EINVAL ;
 int FEATURE_FLAG_SUPPORTS_V190 ;
 int Faulty ;
 int FirstUse ;
 int In_sync ;
 void* MaxSector ;
 int clear_bit (int ,int *) ;
 int le32_to_cpu (int ) ;
 void* le64_to_cpu (int ) ;
 struct dm_raid_superblock* page_address (int ) ;
 scalar_t__ rs_is_raid0 (struct raid_set*) ;
 int rs_is_reshaping (struct raid_set*) ;
 scalar_t__ rt_is_raid0 (int ) ;
 int set_bit (int ,int *) ;
 scalar_t__ super_init_validation (struct raid_set*,struct md_rdev*) ;
 scalar_t__ test_and_clear_bit (int ,int *) ;
 int to_sector (int) ;

__attribute__((used)) static int super_validate(struct raid_set *rs, struct md_rdev *rdev)
{
 struct mddev *mddev = &rs->md;
 struct dm_raid_superblock *sb;

 if (rs_is_raid0(rs) || !rdev->sb_page || rdev->raid_disk < 0)
  return 0;

 sb = page_address(rdev->sb_page);





 if (!mddev->events && super_init_validation(rs, rdev))
  return -EINVAL;

 if (le32_to_cpu(sb->compat_features) &&
     le32_to_cpu(sb->compat_features) != FEATURE_FLAG_SUPPORTS_V190) {
  rs->ti->error = "Unable to assemble array: Unknown flag(s) in compatible feature flags";
  return -EINVAL;
 }

 if (sb->incompat_features) {
  rs->ti->error = "Unable to assemble array: No incompatible feature flags supported yet";
  return -EINVAL;
 }


 mddev->bitmap_info.offset = (rt_is_raid0(rs->raid_type) || rs->journal_dev.dev) ? 0 : to_sector(4096);
 mddev->bitmap_info.default_offset = mddev->bitmap_info.offset;

 if (!test_and_clear_bit(FirstUse, &rdev->flags)) {





  if (le32_to_cpu(sb->compat_features) & FEATURE_FLAG_SUPPORTS_V190)
   rdev->sectors = le64_to_cpu(sb->sectors);

  rdev->recovery_offset = le64_to_cpu(sb->disk_recovery_offset);
  if (rdev->recovery_offset == MaxSector)
   set_bit(In_sync, &rdev->flags);




  else if (!rs_is_reshaping(rs))
   clear_bit(In_sync, &rdev->flags);
 }




 if (test_and_clear_bit(Faulty, &rdev->flags)) {
  rdev->recovery_offset = 0;
  clear_bit(In_sync, &rdev->flags);
  rdev->saved_raid_disk = rdev->raid_disk;
 }


 rdev->data_offset = le64_to_cpu(sb->data_offset);
 rdev->new_data_offset = le64_to_cpu(sb->new_data_offset);

 return 0;
}
