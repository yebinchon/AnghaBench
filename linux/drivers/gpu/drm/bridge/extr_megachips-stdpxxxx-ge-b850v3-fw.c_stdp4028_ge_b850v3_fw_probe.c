
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct i2c_device_id {int dummy; } ;
struct device {int of_node; } ;
struct i2c_client {int irq; struct device dev; } ;
struct TYPE_6__ {int of_node; int * funcs; } ;
struct TYPE_5__ {TYPE_3__ bridge; struct i2c_client* stdp4028_i2c; } ;


 int IRQF_ONESHOT ;
 int IRQF_TRIGGER_HIGH ;
 int STDP4028_DPTX_IRQ_CLEAR ;
 int STDP4028_DPTX_IRQ_STS_REG ;
 int devm_request_threaded_irq (struct device*,int ,int *,int ,int,char*,TYPE_1__*) ;
 int drm_bridge_add (TYPE_3__*) ;
 int ge_b850v3_lvds_funcs ;
 int ge_b850v3_lvds_init (struct device*) ;
 int ge_b850v3_lvds_irq_handler ;
 TYPE_1__* ge_b850v3_lvds_ptr ;
 int i2c_set_clientdata (struct i2c_client*,TYPE_1__*) ;
 int i2c_smbus_write_word_data (struct i2c_client*,int ,int ) ;

__attribute__((used)) static int stdp4028_ge_b850v3_fw_probe(struct i2c_client *stdp4028_i2c,
           const struct i2c_device_id *id)
{
 struct device *dev = &stdp4028_i2c->dev;

 ge_b850v3_lvds_init(dev);

 ge_b850v3_lvds_ptr->stdp4028_i2c = stdp4028_i2c;
 i2c_set_clientdata(stdp4028_i2c, ge_b850v3_lvds_ptr);


 ge_b850v3_lvds_ptr->bridge.funcs = &ge_b850v3_lvds_funcs;
 ge_b850v3_lvds_ptr->bridge.of_node = dev->of_node;
 drm_bridge_add(&ge_b850v3_lvds_ptr->bridge);


 i2c_smbus_write_word_data(stdp4028_i2c,
      STDP4028_DPTX_IRQ_STS_REG,
      STDP4028_DPTX_IRQ_CLEAR);

 if (!stdp4028_i2c->irq)
  return 0;

 return devm_request_threaded_irq(&stdp4028_i2c->dev,
   stdp4028_i2c->irq, ((void*)0),
   ge_b850v3_lvds_irq_handler,
   IRQF_TRIGGER_HIGH | IRQF_ONESHOT,
   "ge-b850v3-lvds-dp", ge_b850v3_lvds_ptr);
}
