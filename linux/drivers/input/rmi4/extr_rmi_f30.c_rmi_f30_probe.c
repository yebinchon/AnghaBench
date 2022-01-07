
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rmi_function {int dev; struct rmi_device* rmi_dev; } ;
struct rmi_driver_data {scalar_t__ input; } ;
struct TYPE_2__ {scalar_t__ disable; } ;
struct rmi_device_platform_data {TYPE_1__ f30_data; } ;
struct rmi_device {int dev; } ;
struct f30_data {scalar_t__ input; } ;


 int ENOMEM ;
 int ENXIO ;
 int GFP_KERNEL ;
 struct rmi_driver_data* dev_get_drvdata (int *) ;
 int dev_info (int *,char*) ;
 int dev_set_drvdata (int *,struct f30_data*) ;
 struct f30_data* devm_kzalloc (int *,int,int ) ;
 int rmi_f30_initialize (struct rmi_function*,struct f30_data*) ;
 struct rmi_device_platform_data* rmi_get_platform_data (struct rmi_device*) ;

__attribute__((used)) static int rmi_f30_probe(struct rmi_function *fn)
{
 struct rmi_device *rmi_dev = fn->rmi_dev;
 const struct rmi_device_platform_data *pdata =
     rmi_get_platform_data(rmi_dev);
 struct rmi_driver_data *drv_data = dev_get_drvdata(&rmi_dev->dev);
 struct f30_data *f30;
 int error;

 if (pdata->f30_data.disable)
  return 0;

 if (!drv_data->input) {
  dev_info(&fn->dev, "F30: no input device found, ignoring\n");
  return -ENXIO;
 }

 f30 = devm_kzalloc(&fn->dev, sizeof(*f30), GFP_KERNEL);
 if (!f30)
  return -ENOMEM;

 f30->input = drv_data->input;

 error = rmi_f30_initialize(fn, f30);
 if (error)
  return error;

 dev_set_drvdata(&fn->dev, f30);
 return 0;
}
