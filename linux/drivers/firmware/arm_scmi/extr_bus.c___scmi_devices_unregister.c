
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scmi_device {int dummy; } ;
struct device {int dummy; } ;


 int scmi_device_destroy (struct scmi_device*) ;
 struct scmi_device* to_scmi_dev (struct device*) ;

__attribute__((used)) static int __scmi_devices_unregister(struct device *dev, void *data)
{
 struct scmi_device *scmi_dev = to_scmi_dev(dev);

 scmi_device_destroy(scmi_dev);
 return 0;
}
