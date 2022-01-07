
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rmi_driver_data {scalar_t__ f34_container; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int PAGE_SIZE ;
 struct rmi_driver_data* dev_get_drvdata (struct device*) ;
 int rmi_f34_status (scalar_t__) ;
 int scnprintf (char*,int ,char*,int) ;

__attribute__((used)) static ssize_t rmi_driver_update_fw_status_show(struct device *dev,
      struct device_attribute *dattr,
      char *buf)
{
 struct rmi_driver_data *data = dev_get_drvdata(dev);
 int update_status = 0;

 if (data->f34_container)
  update_status = rmi_f34_status(data->f34_container);

 return scnprintf(buf, PAGE_SIZE, "%d\n", update_status);
}
