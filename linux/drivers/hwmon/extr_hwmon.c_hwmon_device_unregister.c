
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int parent; } ;


 int HWMON_ID_FORMAT ;
 int dev_dbg (int ,char*) ;
 int dev_name (struct device*) ;
 int device_unregister (struct device*) ;
 int hwmon_ida ;
 int ida_simple_remove (int *,int) ;
 scalar_t__ likely (int) ;
 int sscanf (int ,int ,int*) ;

void hwmon_device_unregister(struct device *dev)
{
 int id;

 if (likely(sscanf(dev_name(dev), HWMON_ID_FORMAT, &id) == 1)) {
  device_unregister(dev);
  ida_simple_remove(&hwmon_ida, id);
 } else
  dev_dbg(dev->parent,
   "hwmon_device_unregister() failed: bad class ID!\n");
}
