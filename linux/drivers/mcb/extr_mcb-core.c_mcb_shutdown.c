
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mcb_driver {int (* shutdown ) (struct mcb_device*) ;} ;
struct mcb_device {int dummy; } ;
struct device {int driver; } ;


 int stub1 (struct mcb_device*) ;
 struct mcb_device* to_mcb_device (struct device*) ;
 struct mcb_driver* to_mcb_driver (int ) ;

__attribute__((used)) static void mcb_shutdown(struct device *dev)
{
 struct mcb_driver *mdrv = to_mcb_driver(dev->driver);
 struct mcb_device *mdev = to_mcb_device(dev);

 if (mdrv && mdrv->shutdown)
  mdrv->shutdown(mdev);
}
