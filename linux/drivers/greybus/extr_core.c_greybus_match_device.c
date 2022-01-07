
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct greybus_driver {int id_table; } ;
struct greybus_bundle_id {int dummy; } ;
struct gb_bundle {int dummy; } ;
struct device_driver {int dummy; } ;
struct device {int dummy; } ;


 struct greybus_bundle_id* greybus_match_id (struct gb_bundle*,int ) ;
 int is_gb_bundle (struct device*) ;
 struct gb_bundle* to_gb_bundle (struct device*) ;
 struct greybus_driver* to_greybus_driver (struct device_driver*) ;

__attribute__((used)) static int greybus_match_device(struct device *dev, struct device_driver *drv)
{
 struct greybus_driver *driver = to_greybus_driver(drv);
 struct gb_bundle *bundle;
 const struct greybus_bundle_id *id;

 if (!is_gb_bundle(dev))
  return 0;

 bundle = to_gb_bundle(dev);

 id = greybus_match_id(bundle, driver->id_table);
 if (id)
  return 1;

 return 0;
}
