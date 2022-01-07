
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct synaptics_i2c {int client; int dwork; } ;
struct input_dev {int dummy; } ;


 int DEEP_SLEEP ;
 int DEV_CONTROL_REG ;
 int INTERRUPT_EN_REG ;
 int cancel_delayed_work_sync (int *) ;
 struct synaptics_i2c* input_get_drvdata (struct input_dev*) ;
 int polling_req ;
 int synaptics_i2c_reg_set (int ,int ,int ) ;

__attribute__((used)) static void synaptics_i2c_close(struct input_dev *input)
{
 struct synaptics_i2c *touch = input_get_drvdata(input);

 if (!polling_req)
  synaptics_i2c_reg_set(touch->client, INTERRUPT_EN_REG, 0);

 cancel_delayed_work_sync(&touch->dwork);


 synaptics_i2c_reg_set(touch->client, DEV_CONTROL_REG, DEEP_SLEEP);
}
