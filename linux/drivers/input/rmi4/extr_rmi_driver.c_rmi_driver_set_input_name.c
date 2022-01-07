
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rmi_driver_data {int f01_container; } ;
struct rmi_device {int dev; } ;
struct input_dev {char* name; } ;


 int GFP_KERNEL ;
 struct rmi_driver_data* dev_get_drvdata (int *) ;
 char* devm_kasprintf (int *,int ,char*,char const*) ;
 char* rmi_f01_get_product_ID (int ) ;

__attribute__((used)) static void rmi_driver_set_input_name(struct rmi_device *rmi_dev,
    struct input_dev *input)
{
 struct rmi_driver_data *data = dev_get_drvdata(&rmi_dev->dev);
 const char *device_name = rmi_f01_get_product_ID(data->f01_container);
 char *name;

 name = devm_kasprintf(&rmi_dev->dev, GFP_KERNEL,
         "Synaptics %s", device_name);
 if (!name)
  return;

 input->name = name;
}
