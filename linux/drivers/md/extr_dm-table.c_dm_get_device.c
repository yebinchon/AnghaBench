
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_target {struct dm_table* table; } ;
struct dm_table {int md; int devices; } ;
struct dm_dev_internal {struct dm_dev* dm_dev; int count; int list; } ;
struct dm_dev {int mode; } ;
typedef int fmode_t ;
typedef int dev_t ;


 int BUG_ON (int) ;
 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int dm_get_dev_t (char const*) ;
 int dm_get_table_device (int ,int ,int,struct dm_dev**) ;
 struct dm_dev_internal* find_device (int *,int ) ;
 int kfree (struct dm_dev_internal*) ;
 struct dm_dev_internal* kmalloc (int,int ) ;
 int list_add (int *,int *) ;
 int refcount_inc (int *) ;
 int refcount_set (int *,int) ;
 int upgrade_mode (struct dm_dev_internal*,int,int ) ;

int dm_get_device(struct dm_target *ti, const char *path, fmode_t mode,
    struct dm_dev **result)
{
 int r;
 dev_t dev;
 struct dm_dev_internal *dd;
 struct dm_table *t = ti->table;

 BUG_ON(!t);

 dev = dm_get_dev_t(path);
 if (!dev)
  return -ENODEV;

 dd = find_device(&t->devices, dev);
 if (!dd) {
  dd = kmalloc(sizeof(*dd), GFP_KERNEL);
  if (!dd)
   return -ENOMEM;

  if ((r = dm_get_table_device(t->md, dev, mode, &dd->dm_dev))) {
   kfree(dd);
   return r;
  }

  refcount_set(&dd->count, 1);
  list_add(&dd->list, &t->devices);
  goto out;

 } else if (dd->dm_dev->mode != (mode | dd->dm_dev->mode)) {
  r = upgrade_mode(dd, mode, t->md);
  if (r)
   return r;
 }
 refcount_inc(&dd->count);
out:
 *result = dd->dm_dev;
 return 0;
}
