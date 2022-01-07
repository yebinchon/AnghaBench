
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mcb_device {int bus; } ;
struct device {int dummy; } ;


 int kfree (struct mcb_device*) ;
 int mcb_bus_put (int ) ;
 struct mcb_device* to_mcb_device (struct device*) ;

__attribute__((used)) static void mcb_release_dev(struct device *dev)
{
 struct mcb_device *mdev = to_mcb_device(dev);

 mcb_bus_put(mdev->bus);
 kfree(mdev);
}
