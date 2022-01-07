
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_driver {int dummy; } ;
struct dax_id {int list; int dev_name; } ;
struct dax_device_driver {int ids; } ;
typedef int ssize_t ;
typedef enum id_action { ____Placeholder_id_action } id_action ;


 int DAX_NAME_LEN ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int ID_ADD ;
 int ID_REMOVE ;
 struct dax_id* __dax_match_id (struct dax_device_driver*,char const*) ;
 int dax_bus_lock ;
 int driver_attach (struct device_driver*) ;
 int kfree (struct dax_id*) ;
 struct dax_id* kzalloc (int,int ) ;
 int list_add (int *,int *) ;
 int list_del (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int sprintf (char*,char*,unsigned int,unsigned int) ;
 int sscanf (char const*,char*,unsigned int*,unsigned int*) ;
 int strncpy (int ,char const*,int) ;
 int sysfs_streq (char const*,char*) ;
 struct dax_device_driver* to_dax_drv (struct device_driver*) ;

__attribute__((used)) static ssize_t do_id_store(struct device_driver *drv, const char *buf,
  size_t count, enum id_action action)
{
 struct dax_device_driver *dax_drv = to_dax_drv(drv);
 unsigned int region_id, id;
 char devname[DAX_NAME_LEN];
 struct dax_id *dax_id;
 ssize_t rc = count;
 int fields;

 fields = sscanf(buf, "dax%d.%d", &region_id, &id);
 if (fields != 2)
  return -EINVAL;
 sprintf(devname, "dax%d.%d", region_id, id);
 if (!sysfs_streq(buf, devname))
  return -EINVAL;

 mutex_lock(&dax_bus_lock);
 dax_id = __dax_match_id(dax_drv, buf);
 if (!dax_id) {
  if (action == ID_ADD) {
   dax_id = kzalloc(sizeof(*dax_id), GFP_KERNEL);
   if (dax_id) {
    strncpy(dax_id->dev_name, buf, DAX_NAME_LEN);
    list_add(&dax_id->list, &dax_drv->ids);
   } else
    rc = -ENOMEM;
  } else
                          ;
 } else if (action == ID_REMOVE) {
  list_del(&dax_id->list);
  kfree(dax_id);
 } else
                            ;
 mutex_unlock(&dax_bus_lock);

 if (rc < 0)
  return rc;
 if (action == ID_ADD)
  rc = driver_attach(drv);
 if (rc)
  return rc;
 return count;
}
