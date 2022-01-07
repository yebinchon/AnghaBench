
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device {int dummy; } ;
struct TYPE_2__ {int fwnode; } ;
struct coresight_device {struct coresight_device* refcnt; TYPE_1__ dev; } ;


 int fwnode_handle_put (int ) ;
 int kfree (struct coresight_device*) ;
 struct coresight_device* to_coresight_device (struct device*) ;

__attribute__((used)) static void coresight_device_release(struct device *dev)
{
 struct coresight_device *csdev = to_coresight_device(dev);

 fwnode_handle_put(csdev->dev.fwnode);
 kfree(csdev->refcnt);
 kfree(csdev);
}
