
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rmi_function {struct rmi_device* rmi_dev; } ;
struct rmi_driver_data {scalar_t__ input; } ;
struct rmi_device {int dev; } ;
struct rmi_2d_sensor {scalar_t__ input; } ;


 int ENODEV ;
 struct rmi_driver_data* dev_get_drvdata (int *) ;
 int rmi_2d_sensor_set_input_params (struct rmi_2d_sensor*) ;

int rmi_2d_sensor_configure_input(struct rmi_function *fn,
     struct rmi_2d_sensor *sensor)
{
 struct rmi_device *rmi_dev = fn->rmi_dev;
 struct rmi_driver_data *drv_data = dev_get_drvdata(&rmi_dev->dev);

 if (!drv_data->input)
  return -ENODEV;

 sensor->input = drv_data->input;
 rmi_2d_sensor_set_input_params(sensor);

 return 0;
}
