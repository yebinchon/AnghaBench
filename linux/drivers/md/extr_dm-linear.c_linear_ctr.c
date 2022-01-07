
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct linear_c {unsigned long long start; int dev; } ;
struct dm_target {char* error; int num_flush_bios; int num_discard_bios; int num_secure_erase_bios; int num_write_same_bios; int num_write_zeroes_bios; struct linear_c* private; int table; } ;
typedef unsigned long long sector_t ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int dm_get_device (struct dm_target*,char*,int ,int *) ;
 int dm_table_get_mode (int ) ;
 int kfree (struct linear_c*) ;
 struct linear_c* kmalloc (int,int ) ;
 int sscanf (char*,char*,unsigned long long*,char*) ;

__attribute__((used)) static int linear_ctr(struct dm_target *ti, unsigned int argc, char **argv)
{
 struct linear_c *lc;
 unsigned long long tmp;
 char dummy;
 int ret;

 if (argc != 2) {
  ti->error = "Invalid argument count";
  return -EINVAL;
 }

 lc = kmalloc(sizeof(*lc), GFP_KERNEL);
 if (lc == ((void*)0)) {
  ti->error = "Cannot allocate linear context";
  return -ENOMEM;
 }

 ret = -EINVAL;
 if (sscanf(argv[1], "%llu%c", &tmp, &dummy) != 1 || tmp != (sector_t)tmp) {
  ti->error = "Invalid device sector";
  goto bad;
 }
 lc->start = tmp;

 ret = dm_get_device(ti, argv[0], dm_table_get_mode(ti->table), &lc->dev);
 if (ret) {
  ti->error = "Device lookup failed";
  goto bad;
 }

 ti->num_flush_bios = 1;
 ti->num_discard_bios = 1;
 ti->num_secure_erase_bios = 1;
 ti->num_write_same_bios = 1;
 ti->num_write_zeroes_bios = 1;
 ti->private = lc;
 return 0;

      bad:
 kfree(lc);
 return ret;
}
