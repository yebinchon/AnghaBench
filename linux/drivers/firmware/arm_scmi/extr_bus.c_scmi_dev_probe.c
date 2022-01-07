
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scmi_driver {int (* probe ) (struct scmi_device*) ;} ;
struct scmi_device_id {int dummy; } ;
struct scmi_device {int handle; int protocol_id; } ;
struct device {int driver; } ;


 int ENODEV ;
 int EPROBE_DEFER ;
 struct scmi_device_id* scmi_dev_match_id (struct scmi_device*,struct scmi_driver*) ;
 int scmi_protocol_init (int ,int ) ;
 int stub1 (struct scmi_device*) ;
 struct scmi_device* to_scmi_dev (struct device*) ;
 struct scmi_driver* to_scmi_driver (int ) ;

__attribute__((used)) static int scmi_dev_probe(struct device *dev)
{
 struct scmi_driver *scmi_drv = to_scmi_driver(dev->driver);
 struct scmi_device *scmi_dev = to_scmi_dev(dev);
 const struct scmi_device_id *id;
 int ret;

 id = scmi_dev_match_id(scmi_dev, scmi_drv);
 if (!id)
  return -ENODEV;

 if (!scmi_dev->handle)
  return -EPROBE_DEFER;

 ret = scmi_protocol_init(scmi_dev->protocol_id, scmi_dev->handle);
 if (ret)
  return ret;

 return scmi_drv->probe(scmi_dev);
}
