
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mcb_driver {int id_table; } ;
struct mcb_device_id {int dummy; } ;
struct mcb_device {int dummy; } ;
struct device_driver {int dummy; } ;
struct device {int dummy; } ;


 struct mcb_device_id* mcb_match_id (int ,struct mcb_device*) ;
 struct mcb_device* to_mcb_device (struct device*) ;
 struct mcb_driver* to_mcb_driver (struct device_driver*) ;

__attribute__((used)) static int mcb_match(struct device *dev, struct device_driver *drv)
{
 struct mcb_driver *mdrv = to_mcb_driver(drv);
 struct mcb_device *mdev = to_mcb_device(dev);
 const struct mcb_device_id *found_id;

 found_id = mcb_match_id(mdrv->id_table, mdev);
 if (found_id)
  return 1;

 return 0;
}
