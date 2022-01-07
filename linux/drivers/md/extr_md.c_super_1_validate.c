
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mdp_superblock_1 {int devflags; int feature_map; int recovery_offset; int journal_tail; int * dev_roles; int max_dev; int new_chunk; int new_layout; int new_level; int delta_disks; int reshape_position; int bitmap_offset; int set_uuid; int resync_offset; int size; int raid_disks; int layout; int level; int utime; int ctime; int chunksize; int events; } ;
struct TYPE_4__ {scalar_t__ offset; scalar_t__ space; int default_offset; int default_space; int * file; } ;
struct mddev {int raid_disks; int major_version; int chunk_sectors; int level; int layout; scalar_t__ events; int reshape_backwards; int max_disks; scalar_t__ minor_version; int delta_disks; int new_level; int new_layout; int new_chunk_sectors; int recovery; TYPE_1__* bitmap; int * pers; int flags; void* reshape_position; TYPE_2__ bitmap_info; int uuid; void* recovery_cp; void* dev_sectors; scalar_t__* clevel; void* utime; void* ctime; scalar_t__ external; scalar_t__ patch_version; } ;
struct md_rdev {int raid_disk; int desc_nr; int saved_raid_disk; int flags; void* recovery_offset; void* journal_tail; int sb_page; } ;
typedef scalar_t__ __u64 ;
typedef scalar_t__ __s32 ;
struct TYPE_3__ {scalar_t__ events_cleared; } ;


 int Bitmap_sync ;
 int EINVAL ;
 int FailFast ;
 int FailFast1 ;
 int Faulty ;
 int In_sync ;
 int Journal ;
 int LEVEL_MULTIPATH ;


 int MD_DISK_ROLE_MAX ;

 int MD_FEATURE_BITMAP_OFFSET ;
 int MD_FEATURE_JOURNAL ;
 int MD_FEATURE_MULTIPLE_PPLS ;
 int MD_FEATURE_PPL ;
 int MD_FEATURE_RAID0_LAYOUT ;
 int MD_FEATURE_RECOVERY_BITMAP ;
 int MD_FEATURE_RECOVERY_OFFSET ;
 int MD_FEATURE_REPLACEMENT ;
 int MD_FEATURE_RESHAPE_ACTIVE ;
 int MD_FEATURE_RESHAPE_BACKWARDS ;
 int MD_HAS_JOURNAL ;
 int MD_HAS_PPL ;
 int MD_RECOVERY_FROZEN ;
 void* MaxSector ;
 int Replacement ;
 int WriteMostly ;
 int WriteMostly1 ;
 int clear_bit (int ,int *) ;
 int le16_to_cpu (int ) ;
 int le32_to_cpu (int ) ;
 void* le64_to_cpu (int ) ;
 int memcpy (int ,int ,int) ;
 struct mdp_superblock_1* page_address (int ) ;
 int pr_warn (char*) ;
 int set_bit (int ,int *) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static int super_1_validate(struct mddev *mddev, struct md_rdev *rdev)
{
 struct mdp_superblock_1 *sb = page_address(rdev->sb_page);
 __u64 ev1 = le64_to_cpu(sb->events);

 rdev->raid_disk = -1;
 clear_bit(Faulty, &rdev->flags);
 clear_bit(In_sync, &rdev->flags);
 clear_bit(Bitmap_sync, &rdev->flags);
 clear_bit(WriteMostly, &rdev->flags);

 if (mddev->raid_disks == 0) {
  mddev->major_version = 1;
  mddev->patch_version = 0;
  mddev->external = 0;
  mddev->chunk_sectors = le32_to_cpu(sb->chunksize);
  mddev->ctime = le64_to_cpu(sb->ctime);
  mddev->utime = le64_to_cpu(sb->utime);
  mddev->level = le32_to_cpu(sb->level);
  mddev->clevel[0] = 0;
  mddev->layout = le32_to_cpu(sb->layout);
  mddev->raid_disks = le32_to_cpu(sb->raid_disks);
  mddev->dev_sectors = le64_to_cpu(sb->size);
  mddev->events = ev1;
  mddev->bitmap_info.offset = 0;
  mddev->bitmap_info.space = 0;



  mddev->bitmap_info.default_offset = 1024 >> 9;
  mddev->bitmap_info.default_space = (4096-1024) >> 9;
  mddev->reshape_backwards = 0;

  mddev->recovery_cp = le64_to_cpu(sb->resync_offset);
  memcpy(mddev->uuid, sb->set_uuid, 16);

  mddev->max_disks = (4096-256)/2;

  if ((le32_to_cpu(sb->feature_map) & MD_FEATURE_BITMAP_OFFSET) &&
      mddev->bitmap_info.file == ((void*)0)) {
   mddev->bitmap_info.offset =
    (__s32)le32_to_cpu(sb->bitmap_offset);





   if (mddev->minor_version > 0)
    mddev->bitmap_info.space = 0;
   else if (mddev->bitmap_info.offset > 0)
    mddev->bitmap_info.space =
     8 - mddev->bitmap_info.offset;
   else
    mddev->bitmap_info.space =
     -mddev->bitmap_info.offset;
  }

  if ((le32_to_cpu(sb->feature_map) & MD_FEATURE_RESHAPE_ACTIVE)) {
   mddev->reshape_position = le64_to_cpu(sb->reshape_position);
   mddev->delta_disks = le32_to_cpu(sb->delta_disks);
   mddev->new_level = le32_to_cpu(sb->new_level);
   mddev->new_layout = le32_to_cpu(sb->new_layout);
   mddev->new_chunk_sectors = le32_to_cpu(sb->new_chunk);
   if (mddev->delta_disks < 0 ||
       (mddev->delta_disks == 0 &&
        (le32_to_cpu(sb->feature_map)
         & MD_FEATURE_RESHAPE_BACKWARDS)))
    mddev->reshape_backwards = 1;
  } else {
   mddev->reshape_position = MaxSector;
   mddev->delta_disks = 0;
   mddev->new_level = mddev->level;
   mddev->new_layout = mddev->layout;
   mddev->new_chunk_sectors = mddev->chunk_sectors;
  }

  if (mddev->level == 0 &&
      !(le32_to_cpu(sb->feature_map) & MD_FEATURE_RAID0_LAYOUT))
   mddev->layout = -1;

  if (le32_to_cpu(sb->feature_map) & MD_FEATURE_JOURNAL)
   set_bit(MD_HAS_JOURNAL, &mddev->flags);

  if (le32_to_cpu(sb->feature_map) &
      (MD_FEATURE_PPL | MD_FEATURE_MULTIPLE_PPLS)) {
   if (le32_to_cpu(sb->feature_map) &
       (MD_FEATURE_BITMAP_OFFSET | MD_FEATURE_JOURNAL))
    return -EINVAL;
   if ((le32_to_cpu(sb->feature_map) & MD_FEATURE_PPL) &&
       (le32_to_cpu(sb->feature_map) &
         MD_FEATURE_MULTIPLE_PPLS))
    return -EINVAL;
   set_bit(MD_HAS_PPL, &mddev->flags);
  }
 } else if (mddev->pers == ((void*)0)) {


  ++ev1;
  if (rdev->desc_nr >= 0 &&
      rdev->desc_nr < le32_to_cpu(sb->max_dev) &&
      (le16_to_cpu(sb->dev_roles[rdev->desc_nr]) < MD_DISK_ROLE_MAX ||
       le16_to_cpu(sb->dev_roles[rdev->desc_nr]) == 129))
   if (ev1 < mddev->events)
    return -EINVAL;
 } else if (mddev->bitmap) {



  if (ev1 < mddev->bitmap->events_cleared)
   return 0;
  if (ev1 < mddev->events)
   set_bit(Bitmap_sync, &rdev->flags);
 } else {
  if (ev1 < mddev->events)

   return 0;
 }
 if (mddev->level != LEVEL_MULTIPATH) {
  int role;
  if (rdev->desc_nr < 0 ||
      rdev->desc_nr >= le32_to_cpu(sb->max_dev)) {
   role = 128;
   rdev->desc_nr = -1;
  } else
   role = le16_to_cpu(sb->dev_roles[rdev->desc_nr]);
  switch(role) {
  case 128:
   break;
  case 130:
   set_bit(Faulty, &rdev->flags);
   break;
  case 129:
   if (!(le32_to_cpu(sb->feature_map) & MD_FEATURE_JOURNAL)) {

    pr_warn("md: journal device provided without journal feature, ignoring the device\n");
    return -EINVAL;
   }
   set_bit(Journal, &rdev->flags);
   rdev->journal_tail = le64_to_cpu(sb->journal_tail);
   rdev->raid_disk = 0;
   break;
  default:
   rdev->saved_raid_disk = role;
   if ((le32_to_cpu(sb->feature_map) &
        MD_FEATURE_RECOVERY_OFFSET)) {
    rdev->recovery_offset = le64_to_cpu(sb->recovery_offset);
    if (!(le32_to_cpu(sb->feature_map) &
          MD_FEATURE_RECOVERY_BITMAP))
     rdev->saved_raid_disk = -1;
   } else {




    if (!test_bit(MD_RECOVERY_FROZEN,
           &mddev->recovery))
     set_bit(In_sync, &rdev->flags);
   }
   rdev->raid_disk = role;
   break;
  }
  if (sb->devflags & WriteMostly1)
   set_bit(WriteMostly, &rdev->flags);
  if (sb->devflags & FailFast1)
   set_bit(FailFast, &rdev->flags);
  if (le32_to_cpu(sb->feature_map) & MD_FEATURE_REPLACEMENT)
   set_bit(Replacement, &rdev->flags);
 } else
  set_bit(In_sync, &rdev->flags);

 return 0;
}
