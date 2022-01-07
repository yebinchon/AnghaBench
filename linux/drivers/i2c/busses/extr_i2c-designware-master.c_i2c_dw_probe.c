
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int parent; } ;
struct i2c_adapter {int retries; TYPE_1__ dev; int * quirks; int * algo; int name; } ;
struct dw_i2c_dev {int (* init ) (struct dw_i2c_dev*) ;int flags; int dev; int irq; int (* disable_int ) (struct dw_i2c_dev*) ;int disable; int cmd_complete; struct i2c_adapter adapter; } ;


 int ACCESS_NO_IRQ_SUSPEND ;
 unsigned long IRQF_COND_SUSPEND ;
 unsigned long IRQF_NO_SUSPEND ;
 unsigned long IRQF_SHARED ;
 int dev_err (int ,char*,int,...) ;
 int dev_name (int ) ;
 int devm_request_irq (int ,int ,int ,unsigned long,int ,struct dw_i2c_dev*) ;
 int i2c_add_numbered_adapter (struct i2c_adapter*) ;
 int i2c_dw_algo ;
 int i2c_dw_disable ;
 int i2c_dw_disable_int (struct dw_i2c_dev*) ;
 int i2c_dw_init_master (struct dw_i2c_dev*) ;
 int i2c_dw_init_recovery_info (struct dw_i2c_dev*) ;
 int i2c_dw_isr ;
 int i2c_dw_quirks ;
 int i2c_dw_set_reg_access (struct dw_i2c_dev*) ;
 int i2c_dw_set_timings_master (struct dw_i2c_dev*) ;
 int i2c_set_adapdata (struct i2c_adapter*,struct dw_i2c_dev*) ;
 int init_completion (int *) ;
 int pm_runtime_get_noresume (int ) ;
 int pm_runtime_put_noidle (int ) ;
 int snprintf (int ,int,char*) ;
 int stub1 (struct dw_i2c_dev*) ;

int i2c_dw_probe(struct dw_i2c_dev *dev)
{
 struct i2c_adapter *adap = &dev->adapter;
 unsigned long irq_flags;
 int ret;

 init_completion(&dev->cmd_complete);

 dev->init = i2c_dw_init_master;
 dev->disable = i2c_dw_disable;
 dev->disable_int = i2c_dw_disable_int;

 ret = i2c_dw_set_reg_access(dev);
 if (ret)
  return ret;

 ret = i2c_dw_set_timings_master(dev);
 if (ret)
  return ret;

 ret = dev->init(dev);
 if (ret)
  return ret;

 snprintf(adap->name, sizeof(adap->name),
   "Synopsys DesignWare I2C adapter");
 adap->retries = 3;
 adap->algo = &i2c_dw_algo;
 adap->quirks = &i2c_dw_quirks;
 adap->dev.parent = dev->dev;
 i2c_set_adapdata(adap, dev);

 if (dev->flags & ACCESS_NO_IRQ_SUSPEND) {
  irq_flags = IRQF_NO_SUSPEND;
 } else {
  irq_flags = IRQF_SHARED | IRQF_COND_SUSPEND;
 }

 i2c_dw_disable_int(dev);
 ret = devm_request_irq(dev->dev, dev->irq, i2c_dw_isr, irq_flags,
          dev_name(dev->dev), dev);
 if (ret) {
  dev_err(dev->dev, "failure requesting irq %i: %d\n",
   dev->irq, ret);
  return ret;
 }

 ret = i2c_dw_init_recovery_info(dev);
 if (ret)
  return ret;







 pm_runtime_get_noresume(dev->dev);
 ret = i2c_add_numbered_adapter(adap);
 if (ret)
  dev_err(dev->dev, "failure adding adapter: %d\n", ret);
 pm_runtime_put_noidle(dev->dev);

 return ret;
}
