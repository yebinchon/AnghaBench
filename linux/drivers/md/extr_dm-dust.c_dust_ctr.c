
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dust_device {unsigned int sect_per_block; unsigned int blksz; unsigned long long start; int fail_read_on_bb; int quiet_mode; int dust_lock; scalar_t__ badblock_count; int badblocklist; int sect_per_block_shift; int dev; } ;
struct dm_target {char* error; int num_discard_bios; int num_flush_bios; struct dust_device* private; int table; int len; } ;
typedef scalar_t__ sector_t ;


 int BUG_ON (int) ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int RB_ROOT ;
 unsigned int SECTOR_SHIFT ;
 int __ffs (unsigned int) ;
 scalar_t__ dm_get_device (struct dm_target*,char*,int ,int *) ;
 scalar_t__ dm_set_target_max_io_len (struct dm_target*,unsigned int) ;
 int dm_table_get_mode (int ) ;
 int is_power_of_2 (unsigned int) ;
 int kfree (struct dust_device*) ;
 scalar_t__ kstrtouint (char*,int,unsigned int*) ;
 struct dust_device* kzalloc (int,int ) ;
 scalar_t__ min (int ,scalar_t__) ;
 int spin_lock_init (int *) ;
 int sscanf (char*,char*,unsigned long long*,char*) ;
 scalar_t__ to_sector (unsigned int) ;

__attribute__((used)) static int dust_ctr(struct dm_target *ti, unsigned int argc, char **argv)
{
 struct dust_device *dd;
 unsigned long long tmp;
 char dummy;
 unsigned int blksz;
 unsigned int sect_per_block;
 sector_t DUST_MAX_BLKSZ_SECTORS = 2097152;
 sector_t max_block_sectors = min(ti->len, DUST_MAX_BLKSZ_SECTORS);

 if (argc != 3) {
  ti->error = "Invalid argument count";
  return -EINVAL;
 }

 if (kstrtouint(argv[2], 10, &blksz) || !blksz) {
  ti->error = "Invalid block size parameter";
  return -EINVAL;
 }

 if (blksz < 512) {
  ti->error = "Block size must be at least 512";
  return -EINVAL;
 }

 if (!is_power_of_2(blksz)) {
  ti->error = "Block size must be a power of 2";
  return -EINVAL;
 }

 if (to_sector(blksz) > max_block_sectors) {
  ti->error = "Block size is too large";
  return -EINVAL;
 }

 sect_per_block = (blksz >> SECTOR_SHIFT);

 if (sscanf(argv[1], "%llu%c", &tmp, &dummy) != 1 || tmp != (sector_t)tmp) {
  ti->error = "Invalid device offset sector";
  return -EINVAL;
 }

 dd = kzalloc(sizeof(struct dust_device), GFP_KERNEL);
 if (dd == ((void*)0)) {
  ti->error = "Cannot allocate context";
  return -ENOMEM;
 }

 if (dm_get_device(ti, argv[0], dm_table_get_mode(ti->table), &dd->dev)) {
  ti->error = "Device lookup failed";
  kfree(dd);
  return -EINVAL;
 }

 dd->sect_per_block = sect_per_block;
 dd->blksz = blksz;
 dd->start = tmp;

 dd->sect_per_block_shift = __ffs(sect_per_block);





 dd->fail_read_on_bb = 0;




 dd->badblocklist = RB_ROOT;
 dd->badblock_count = 0;
 spin_lock_init(&dd->dust_lock);

 dd->quiet_mode = 0;

 BUG_ON(dm_set_target_max_io_len(ti, dd->sect_per_block) != 0);

 ti->num_discard_bios = 1;
 ti->num_flush_bios = 1;
 ti->private = dd;

 return 0;
}
