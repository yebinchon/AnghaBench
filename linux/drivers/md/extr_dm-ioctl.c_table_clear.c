
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mapped_device {int dummy; } ;
struct hash_cell {struct mapped_device* md; struct dm_table* new_map; } ;
struct file {int dummy; } ;
struct dm_table {int dummy; } ;
struct dm_ioctl {int flags; } ;


 int DMDEBUG_LIMIT (char*) ;
 int DM_INACTIVE_PRESENT_FLAG ;
 int ENXIO ;
 int __dev_status (struct mapped_device*,struct dm_ioctl*) ;
 struct hash_cell* __find_device_hash_cell (struct dm_ioctl*) ;
 int _hash_lock ;
 int dm_put (struct mapped_device*) ;
 int dm_sync_table (struct mapped_device*) ;
 int dm_table_destroy (struct dm_table*) ;
 int down_write (int *) ;
 int up_write (int *) ;

__attribute__((used)) static int table_clear(struct file *filp, struct dm_ioctl *param, size_t param_size)
{
 struct hash_cell *hc;
 struct mapped_device *md;
 struct dm_table *old_map = ((void*)0);

 down_write(&_hash_lock);

 hc = __find_device_hash_cell(param);
 if (!hc) {
  DMDEBUG_LIMIT("device doesn't appear to be in the dev hash table.");
  up_write(&_hash_lock);
  return -ENXIO;
 }

 if (hc->new_map) {
  old_map = hc->new_map;
  hc->new_map = ((void*)0);
 }

 param->flags &= ~DM_INACTIVE_PRESENT_FLAG;

 __dev_status(hc->md, param);
 md = hc->md;
 up_write(&_hash_lock);
 if (old_map) {
  dm_sync_table(md);
  dm_table_destroy(old_map);
 }
 dm_put(md);

 return 0;
}
