
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct i2c_client {int dummy; } ;
typedef int irqreturn_t ;
struct TYPE_3__ {scalar_t__ dev; } ;
struct TYPE_4__ {TYPE_1__ connector; struct i2c_client* stdp4028_i2c; } ;


 int IRQ_HANDLED ;
 int STDP4028_DPTX_IRQ_CLEAR ;
 int STDP4028_DPTX_IRQ_STS_REG ;
 int drm_kms_helper_hotplug_event (scalar_t__) ;
 TYPE_2__* ge_b850v3_lvds_ptr ;
 int i2c_smbus_write_word_data (struct i2c_client*,int ,int ) ;

__attribute__((used)) static irqreturn_t ge_b850v3_lvds_irq_handler(int irq, void *dev_id)
{
 struct i2c_client *stdp4028_i2c
   = ge_b850v3_lvds_ptr->stdp4028_i2c;

 i2c_smbus_write_word_data(stdp4028_i2c,
      STDP4028_DPTX_IRQ_STS_REG,
      STDP4028_DPTX_IRQ_CLEAR);

 if (ge_b850v3_lvds_ptr->connector.dev)
  drm_kms_helper_hotplug_event(ge_b850v3_lvds_ptr->connector.dev);

 return IRQ_HANDLED;
}
