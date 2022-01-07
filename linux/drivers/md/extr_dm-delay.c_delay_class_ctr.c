
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_target {char* error; int table; } ;
struct delay_class {unsigned long long start; unsigned long long delay; int dev; } ;
typedef unsigned long long sector_t ;


 int EINVAL ;
 int dm_get_device (struct dm_target*,char*,int ,int *) ;
 int dm_table_get_mode (int ) ;
 int sscanf (char*,char*,unsigned long long*,char*) ;

__attribute__((used)) static int delay_class_ctr(struct dm_target *ti, struct delay_class *c, char **argv)
{
 int ret;
 unsigned long long tmpll;
 char dummy;

 if (sscanf(argv[1], "%llu%c", &tmpll, &dummy) != 1 || tmpll != (sector_t)tmpll) {
  ti->error = "Invalid device sector";
  return -EINVAL;
 }
 c->start = tmpll;

 if (sscanf(argv[2], "%u%c", &c->delay, &dummy) != 1) {
  ti->error = "Invalid delay";
  return -EINVAL;
 }

 ret = dm_get_device(ti, argv[0], dm_table_get_mode(ti->table), &c->dev);
 if (ret) {
  ti->error = "Device lookup failed";
  return ret;
 }

 return 0;
}
