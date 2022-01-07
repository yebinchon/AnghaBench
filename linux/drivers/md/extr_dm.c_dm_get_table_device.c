
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_dev {int name; int * bdev; int mode; } ;
struct table_device {struct dm_dev dm_dev; int count; int list; } ;
struct mapped_device {int table_devices_lock; int table_devices; int numa_node_id; } ;
typedef int fmode_t ;
typedef int dev_t ;


 int ENOMEM ;
 int GFP_KERNEL ;
 struct table_device* find_table_device (int *,int ,int ) ;
 int format_dev_t (int ,int ) ;
 int kfree (struct table_device*) ;
 struct table_device* kmalloc_node (int,int ,int ) ;
 int list_add (int *,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int open_table_device (struct table_device*,int ,struct mapped_device*) ;
 int refcount_inc (int *) ;
 int refcount_set (int *,int) ;

int dm_get_table_device(struct mapped_device *md, dev_t dev, fmode_t mode,
   struct dm_dev **result)
{
 int r;
 struct table_device *td;

 mutex_lock(&md->table_devices_lock);
 td = find_table_device(&md->table_devices, dev, mode);
 if (!td) {
  td = kmalloc_node(sizeof(*td), GFP_KERNEL, md->numa_node_id);
  if (!td) {
   mutex_unlock(&md->table_devices_lock);
   return -ENOMEM;
  }

  td->dm_dev.mode = mode;
  td->dm_dev.bdev = ((void*)0);

  if ((r = open_table_device(td, dev, md))) {
   mutex_unlock(&md->table_devices_lock);
   kfree(td);
   return r;
  }

  format_dev_t(td->dm_dev.name, dev);

  refcount_set(&td->count, 1);
  list_add(&td->list, &md->table_devices);
 } else {
  refcount_inc(&td->count);
 }
 mutex_unlock(&md->table_devices_lock);

 *result = &td->dm_dev;
 return 0;
}
