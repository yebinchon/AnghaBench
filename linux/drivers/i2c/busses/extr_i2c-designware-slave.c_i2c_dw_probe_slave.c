
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int parent; } ;
struct i2c_adapter {int retries; TYPE_1__ dev; int * algo; int name; } ;
struct dw_i2c_dev {int (* init ) (struct dw_i2c_dev*) ;int dev; int irq; int disable_int; int disable; int cmd_complete; struct i2c_adapter adapter; } ;


 int IRQF_SHARED ;
 int dev_err (int ,char*,int,...) ;
 int dev_name (int ) ;
 int devm_request_irq (int ,int ,int ,int ,int ,struct dw_i2c_dev*) ;
 int i2c_add_numbered_adapter (struct i2c_adapter*) ;
 int i2c_dw_algo ;
 int i2c_dw_disable ;
 int i2c_dw_disable_int ;
 int i2c_dw_init_slave (struct dw_i2c_dev*) ;
 int i2c_dw_isr_slave ;
 int i2c_dw_set_reg_access (struct dw_i2c_dev*) ;
 int i2c_dw_set_sda_hold (struct dw_i2c_dev*) ;
 int i2c_set_adapdata (struct i2c_adapter*,struct dw_i2c_dev*) ;
 int init_completion (int *) ;
 int snprintf (int ,int,char*) ;
 int stub1 (struct dw_i2c_dev*) ;

int i2c_dw_probe_slave(struct dw_i2c_dev *dev)
{
 struct i2c_adapter *adap = &dev->adapter;
 int ret;

 init_completion(&dev->cmd_complete);

 dev->init = i2c_dw_init_slave;
 dev->disable = i2c_dw_disable;
 dev->disable_int = i2c_dw_disable_int;

 ret = i2c_dw_set_reg_access(dev);
 if (ret)
  return ret;

 ret = i2c_dw_set_sda_hold(dev);
 if (ret)
  return ret;

 ret = dev->init(dev);
 if (ret)
  return ret;

 snprintf(adap->name, sizeof(adap->name),
   "Synopsys DesignWare I2C Slave adapter");
 adap->retries = 3;
 adap->algo = &i2c_dw_algo;
 adap->dev.parent = dev->dev;
 i2c_set_adapdata(adap, dev);

 ret = devm_request_irq(dev->dev, dev->irq, i2c_dw_isr_slave,
          IRQF_SHARED, dev_name(dev->dev), dev);
 if (ret) {
  dev_err(dev->dev, "failure requesting irq %i: %d\n",
   dev->irq, ret);
  return ret;
 }

 ret = i2c_add_numbered_adapter(adap);
 if (ret)
  dev_err(dev->dev, "failure adding adapter: %d\n", ret);

 return ret;
}
