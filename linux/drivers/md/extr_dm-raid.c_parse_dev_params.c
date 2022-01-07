
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_12__ {int persistent; int major_version; int recovery_cp; scalar_t__ external; int disks; } ;
struct TYPE_10__ {int same_set; } ;
struct TYPE_11__ {TYPE_3__ rdev; scalar_t__ dev; } ;
struct raid_set {int raid_disks; TYPE_6__* ti; TYPE_5__ md; TYPE_4__ journal_dev; TYPE_2__* dev; } ;
struct dm_arg_set {int dummy; } ;
struct TYPE_14__ {int bdev; } ;
struct TYPE_13__ {char* error; int table; } ;
struct TYPE_8__ {int raid_disk; int flags; int same_set; int bdev; int meta_bdev; int recovery_offset; int sb_page; TYPE_5__* mddev; scalar_t__ new_data_offset; scalar_t__ data_offset; } ;
struct TYPE_9__ {TYPE_1__ rdev; TYPE_7__* data_dev; TYPE_7__* meta_dev; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int In_sync ;
 int alloc_page (int ) ;
 int dm_get_device (TYPE_6__*,char const*,int ,TYPE_7__**) ;
 char* dm_shift_arg (struct dm_arg_set*) ;
 int dm_table_get_mode (int ) ;
 int list_add_tail (int *,int *) ;
 scalar_t__ strcmp (char const*,char*) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static int parse_dev_params(struct raid_set *rs, struct dm_arg_set *as)
{
 int i;
 int rebuild = 0;
 int metadata_available = 0;
 int r = 0;
 const char *arg;


 arg = dm_shift_arg(as);
 if (!arg)
  return -EINVAL;

 for (i = 0; i < rs->raid_disks; i++) {
  rs->dev[i].rdev.raid_disk = i;

  rs->dev[i].meta_dev = ((void*)0);
  rs->dev[i].data_dev = ((void*)0);





  rs->dev[i].rdev.data_offset = 0;
  rs->dev[i].rdev.new_data_offset = 0;
  rs->dev[i].rdev.mddev = &rs->md;

  arg = dm_shift_arg(as);
  if (!arg)
   return -EINVAL;

  if (strcmp(arg, "-")) {
   r = dm_get_device(rs->ti, arg, dm_table_get_mode(rs->ti->table),
       &rs->dev[i].meta_dev);
   if (r) {
    rs->ti->error = "RAID metadata device lookup failure";
    return r;
   }

   rs->dev[i].rdev.sb_page = alloc_page(GFP_KERNEL);
   if (!rs->dev[i].rdev.sb_page) {
    rs->ti->error = "Failed to allocate superblock page";
    return -ENOMEM;
   }
  }

  arg = dm_shift_arg(as);
  if (!arg)
   return -EINVAL;

  if (!strcmp(arg, "-")) {
   if (!test_bit(In_sync, &rs->dev[i].rdev.flags) &&
       (!rs->dev[i].rdev.recovery_offset)) {
    rs->ti->error = "Drive designated for rebuild not specified";
    return -EINVAL;
   }

   if (rs->dev[i].meta_dev) {
    rs->ti->error = "No data device supplied with metadata device";
    return -EINVAL;
   }

   continue;
  }

  r = dm_get_device(rs->ti, arg, dm_table_get_mode(rs->ti->table),
      &rs->dev[i].data_dev);
  if (r) {
   rs->ti->error = "RAID device lookup failure";
   return r;
  }

  if (rs->dev[i].meta_dev) {
   metadata_available = 1;
   rs->dev[i].rdev.meta_bdev = rs->dev[i].meta_dev->bdev;
  }
  rs->dev[i].rdev.bdev = rs->dev[i].data_dev->bdev;
  list_add_tail(&rs->dev[i].rdev.same_set, &rs->md.disks);
  if (!test_bit(In_sync, &rs->dev[i].rdev.flags))
   rebuild++;
 }

 if (rs->journal_dev.dev)
  list_add_tail(&rs->journal_dev.rdev.same_set, &rs->md.disks);

 if (metadata_available) {
  rs->md.external = 0;
  rs->md.persistent = 1;
  rs->md.major_version = 2;
 } else if (rebuild && !rs->md.recovery_cp) {
  rs->ti->error = "Unable to rebuild drive while array is not in-sync";
  return -EINVAL;
 }

 return 0;
}
