
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
struct rmi_function {struct device dev; } ;
struct rmi_driver_data {struct rmi_function* f34_container; } ;
struct f34_data {int configuration_id; } ;
struct device_attribute {int dummy; } ;
typedef int ssize_t ;


 int PAGE_SIZE ;
 void* dev_get_drvdata (struct device*) ;
 int scnprintf (char*,int ,char*,int ) ;

__attribute__((used)) static ssize_t rmi_driver_configuration_id_show(struct device *dev,
      struct device_attribute *dattr,
      char *buf)
{
 struct rmi_driver_data *data = dev_get_drvdata(dev);
 struct rmi_function *fn = data->f34_container;
 struct f34_data *f34;

 if (fn) {
  f34 = dev_get_drvdata(&fn->dev);

  return scnprintf(buf, PAGE_SIZE, "%s\n", f34->configuration_id);
 }

 return 0;
}
