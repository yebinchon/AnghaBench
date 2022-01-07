
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ltc4245_data {int* cregs; int * gpios; int * vregs; scalar_t__ last_updated; int use_extra_gpios; struct i2c_client* client; } ;
struct i2c_client {int dummy; } ;
struct device {int dummy; } ;


 int ARRAY_SIZE (int *) ;
 int EAGAIN ;
 int HZ ;
 size_t LTC4245_GPIO ;
 int LTC4245_GPIOADC ;
 struct ltc4245_data* dev_get_drvdata (struct device*) ;
 int i2c_smbus_write_byte_data (struct i2c_client*,size_t,int) ;
 int jiffies ;
 scalar_t__ time_after (int ,scalar_t__) ;

__attribute__((used)) static void ltc4245_update_gpios(struct device *dev)
{
 struct ltc4245_data *data = dev_get_drvdata(dev);
 struct i2c_client *client = data->client;
 u8 gpio_curr, gpio_next, gpio_reg;
 int i;


 if (!data->use_extra_gpios) {
  data->gpios[0] = data->vregs[LTC4245_GPIOADC - 0x10];
  return;
 }





 if (time_after(jiffies, data->last_updated + 5 * HZ)) {
  for (i = 0; i < ARRAY_SIZE(data->gpios); i++)
   data->gpios[i] = -EAGAIN;
 }
 gpio_curr = (data->cregs[LTC4245_GPIO] & 0xc0) >> 6;
 if (gpio_curr > 0)
  gpio_curr -= 1;


 data->gpios[gpio_curr] = data->vregs[LTC4245_GPIOADC - 0x10];


 gpio_next = (gpio_curr + 1) % ARRAY_SIZE(data->gpios);





 gpio_reg = (data->cregs[LTC4245_GPIO] & 0x3f) | ((gpio_next + 1) << 6);


 i2c_smbus_write_byte_data(client, LTC4245_GPIO, gpio_reg);


 data->cregs[LTC4245_GPIO] = gpio_reg;
}
