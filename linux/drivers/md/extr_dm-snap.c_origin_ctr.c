
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_target {char* error; int num_flush_bios; struct dm_origin* private; int table; } ;
struct dm_origin {struct dm_target* ti; int dev; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int dm_get_device (struct dm_target*,char*,int ,int *) ;
 int dm_table_get_mode (int ) ;
 int kfree (struct dm_origin*) ;
 struct dm_origin* kmalloc (int,int ) ;

__attribute__((used)) static int origin_ctr(struct dm_target *ti, unsigned int argc, char **argv)
{
 int r;
 struct dm_origin *o;

 if (argc != 1) {
  ti->error = "origin: incorrect number of arguments";
  return -EINVAL;
 }

 o = kmalloc(sizeof(struct dm_origin), GFP_KERNEL);
 if (!o) {
  ti->error = "Cannot allocate private origin structure";
  r = -ENOMEM;
  goto bad_alloc;
 }

 r = dm_get_device(ti, argv[0], dm_table_get_mode(ti->table), &o->dev);
 if (r) {
  ti->error = "Cannot get target device";
  goto bad_open;
 }

 o->ti = ti;
 ti->private = o;
 ti->num_flush_bios = 1;

 return 0;

bad_open:
 kfree(o);
bad_alloc:
 return r;
}
