
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scmi_driver {int (* remove ) (struct scmi_device*) ;} ;
struct scmi_device {int dummy; } ;
struct device {int driver; } ;


 int stub1 (struct scmi_device*) ;
 struct scmi_device* to_scmi_dev (struct device*) ;
 struct scmi_driver* to_scmi_driver (int ) ;

__attribute__((used)) static int scmi_dev_remove(struct device *dev)
{
 struct scmi_driver *scmi_drv = to_scmi_driver(dev->driver);
 struct scmi_device *scmi_dev = to_scmi_dev(dev);

 if (scmi_drv->remove)
  scmi_drv->remove(scmi_dev);

 return 0;
}
