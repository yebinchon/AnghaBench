
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int query_base_addr; } ;
struct rmi_function {TYPE_1__ fd; TYPE_2__* rmi_dev; int dev; } ;
struct rmi_driver {int (* set_irq_bits ) (TYPE_2__*,int ) ;int (* clear_irq_bits ) (TYPE_2__*,int ) ;} ;
struct rmi_2d_sensor {int report_rel; int report_abs; } ;
struct f11_data {int dev_controls; int sens_query; int rel_mask; int abs_mask; struct rmi_2d_sensor sensor; } ;
struct TYPE_7__ {struct rmi_driver* driver; } ;


 struct f11_data* dev_get_drvdata (int *) ;
 int f11_write_control_regs (struct rmi_function*,int *,int *,int ) ;
 int stub1 (TYPE_2__*,int ) ;
 int stub2 (TYPE_2__*,int ) ;
 int stub3 (TYPE_2__*,int ) ;
 int stub4 (TYPE_2__*,int ) ;

__attribute__((used)) static int rmi_f11_config(struct rmi_function *fn)
{
 struct f11_data *f11 = dev_get_drvdata(&fn->dev);
 struct rmi_driver *drv = fn->rmi_dev->driver;
 struct rmi_2d_sensor *sensor = &f11->sensor;
 int rc;

 if (!sensor->report_abs)
  drv->clear_irq_bits(fn->rmi_dev, f11->abs_mask);
 else
  drv->set_irq_bits(fn->rmi_dev, f11->abs_mask);

 if (!sensor->report_rel)
  drv->clear_irq_bits(fn->rmi_dev, f11->rel_mask);
 else
  drv->set_irq_bits(fn->rmi_dev, f11->rel_mask);

 rc = f11_write_control_regs(fn, &f11->sens_query,
      &f11->dev_controls, fn->fd.query_base_addr);
 if (rc < 0)
  return rc;

 return 0;
}
