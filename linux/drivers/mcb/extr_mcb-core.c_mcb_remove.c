
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct module {int dummy; } ;
struct mcb_driver {int (* remove ) (struct mcb_device*) ;} ;
struct TYPE_6__ {TYPE_2__* parent; } ;
struct mcb_device {TYPE_3__ dev; } ;
struct device {int driver; } ;
struct TYPE_5__ {TYPE_1__* driver; } ;
struct TYPE_4__ {struct module* owner; } ;


 int module_put (struct module*) ;
 int put_device (TYPE_3__*) ;
 int stub1 (struct mcb_device*) ;
 struct mcb_device* to_mcb_device (struct device*) ;
 struct mcb_driver* to_mcb_driver (int ) ;

__attribute__((used)) static int mcb_remove(struct device *dev)
{
 struct mcb_driver *mdrv = to_mcb_driver(dev->driver);
 struct mcb_device *mdev = to_mcb_device(dev);
 struct module *carrier_mod;

 mdrv->remove(mdev);

 carrier_mod = mdev->dev.parent->driver->owner;
 module_put(carrier_mod);

 put_device(&mdev->dev);

 return 0;
}
