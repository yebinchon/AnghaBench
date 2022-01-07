
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct rmi_function {int dev; TYPE_1__* rmi_dev; } ;
struct rmi_driver {int (* clear_irq_bits ) (TYPE_1__*,int ) ;int (* set_irq_bits ) (TYPE_1__*,int ) ;} ;
struct rmi_2d_sensor {int report_abs; } ;
struct f12_data {int rel_mask; int abs_mask; struct rmi_2d_sensor sensor; } ;
struct TYPE_4__ {struct rmi_driver* driver; } ;


 struct f12_data* dev_get_drvdata (int *) ;
 int dev_warn (int *,char*,int) ;
 int rmi_f12_write_control_regs (struct rmi_function*) ;
 int stub1 (TYPE_1__*,int ) ;
 int stub2 (TYPE_1__*,int ) ;
 int stub3 (TYPE_1__*,int ) ;

__attribute__((used)) static int rmi_f12_config(struct rmi_function *fn)
{
 struct rmi_driver *drv = fn->rmi_dev->driver;
 struct f12_data *f12 = dev_get_drvdata(&fn->dev);
 struct rmi_2d_sensor *sensor;
 int ret;

 sensor = &f12->sensor;

 if (!sensor->report_abs)
  drv->clear_irq_bits(fn->rmi_dev, f12->abs_mask);
 else
  drv->set_irq_bits(fn->rmi_dev, f12->abs_mask);

 drv->clear_irq_bits(fn->rmi_dev, f12->rel_mask);

 ret = rmi_f12_write_control_regs(fn);
 if (ret)
  dev_warn(&fn->dev,
   "Failed to write F12 control registers: %d\n", ret);

 return 0;
}
