
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct dust_device {int fail_read_on_bb; int quiet_mode; int sect_per_block; int dust_lock; int badblock_count; TYPE_2__* dev; } ;
struct dm_target {struct dust_device* private; } ;
typedef unsigned long long sector_t ;
struct TYPE_4__ {TYPE_1__* bdev; } ;
struct TYPE_3__ {int bd_inode; } ;


 int DMERR (char*,...) ;
 int DMINFO (char*,...) ;
 int EINVAL ;
 unsigned long long SECTOR_SHIFT ;
 int dust_add_block (struct dust_device*,unsigned long long) ;
 int dust_clear_badblocks (struct dust_device*) ;
 int dust_query_block (struct dust_device*,unsigned long long) ;
 int dust_remove_block (struct dust_device*,unsigned long long) ;
 unsigned long long i_size_read (int ) ;
 int sector_div (unsigned long long,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int sscanf (char*,char*,unsigned long long*,char*) ;
 int strcasecmp (char*,char*) ;

__attribute__((used)) static int dust_message(struct dm_target *ti, unsigned int argc, char **argv,
   char *result_buf, unsigned int maxlen)
{
 struct dust_device *dd = ti->private;
 sector_t size = i_size_read(dd->dev->bdev->bd_inode) >> SECTOR_SHIFT;
 bool invalid_msg = 0;
 int result = -EINVAL;
 unsigned long long tmp, block;
 unsigned long flags;
 char dummy;

 if (argc == 1) {
  if (!strcasecmp(argv[0], "addbadblock") ||
      !strcasecmp(argv[0], "removebadblock") ||
      !strcasecmp(argv[0], "queryblock")) {
   DMERR("%s requires an additional argument", argv[0]);
  } else if (!strcasecmp(argv[0], "disable")) {
   DMINFO("disabling read failures on bad sectors");
   dd->fail_read_on_bb = 0;
   result = 0;
  } else if (!strcasecmp(argv[0], "enable")) {
   DMINFO("enabling read failures on bad sectors");
   dd->fail_read_on_bb = 1;
   result = 0;
  } else if (!strcasecmp(argv[0], "countbadblocks")) {
   spin_lock_irqsave(&dd->dust_lock, flags);
   DMINFO("countbadblocks: %llu badblock(s) found",
          dd->badblock_count);
   spin_unlock_irqrestore(&dd->dust_lock, flags);
   result = 0;
  } else if (!strcasecmp(argv[0], "clearbadblocks")) {
   result = dust_clear_badblocks(dd);
  } else if (!strcasecmp(argv[0], "quiet")) {
   if (!dd->quiet_mode)
    dd->quiet_mode = 1;
   else
    dd->quiet_mode = 0;
   result = 0;
  } else {
   invalid_msg = 1;
  }
 } else if (argc == 2) {
  if (sscanf(argv[1], "%llu%c", &tmp, &dummy) != 1)
   return result;

  block = tmp;
  sector_div(size, dd->sect_per_block);
  if (block > size) {
   DMERR("selected block value out of range");
   return result;
  }

  if (!strcasecmp(argv[0], "addbadblock"))
   result = dust_add_block(dd, block);
  else if (!strcasecmp(argv[0], "removebadblock"))
   result = dust_remove_block(dd, block);
  else if (!strcasecmp(argv[0], "queryblock"))
   result = dust_query_block(dd, block);
  else
   invalid_msg = 1;

 } else
  DMERR("invalid number of arguments '%d'", argc);

 if (invalid_msg)
  DMERR("unrecognized message '%s' received", argv[0]);

 return result;
}
