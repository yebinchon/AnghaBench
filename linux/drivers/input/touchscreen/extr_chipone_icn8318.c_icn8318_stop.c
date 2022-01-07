
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct input_dev {int dummy; } ;
struct icn8318_data {int wake_gpio; TYPE_1__* client; } ;
struct TYPE_2__ {int irq; } ;


 int ICN8318_POWER_HIBERNATE ;
 int ICN8318_REG_POWER ;
 int disable_irq (int ) ;
 int gpiod_set_value_cansleep (int ,int ) ;
 int i2c_smbus_write_byte_data (TYPE_1__*,int ,int ) ;
 struct icn8318_data* input_get_drvdata (struct input_dev*) ;

__attribute__((used)) static void icn8318_stop(struct input_dev *dev)
{
 struct icn8318_data *data = input_get_drvdata(dev);

 disable_irq(data->client->irq);
 i2c_smbus_write_byte_data(data->client, ICN8318_REG_POWER,
      ICN8318_POWER_HIBERNATE);
 gpiod_set_value_cansleep(data->wake_gpio, 0);
}
