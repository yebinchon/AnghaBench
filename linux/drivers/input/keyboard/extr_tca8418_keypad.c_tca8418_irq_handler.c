
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct tca8418_keypad {TYPE_1__* client; } ;
typedef int irqreturn_t ;
struct TYPE_2__ {int dev; } ;


 int INT_STAT_K_INT ;
 int INT_STAT_OVR_FLOW_INT ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int REG_INT_STAT ;
 int dev_err (int *,char*) ;
 int dev_warn (int *,char*) ;
 int tca8418_read_byte (struct tca8418_keypad*,int ,int*) ;
 int tca8418_read_keypad (struct tca8418_keypad*) ;
 int tca8418_write_byte (struct tca8418_keypad*,int ,int) ;

__attribute__((used)) static irqreturn_t tca8418_irq_handler(int irq, void *dev_id)
{
 struct tca8418_keypad *keypad_data = dev_id;
 u8 reg;
 int error;

 error = tca8418_read_byte(keypad_data, REG_INT_STAT, &reg);
 if (error) {
  dev_err(&keypad_data->client->dev,
   "unable to read REG_INT_STAT\n");
  return IRQ_NONE;
 }

 if (!reg)
  return IRQ_NONE;

 if (reg & INT_STAT_OVR_FLOW_INT)
  dev_warn(&keypad_data->client->dev, "overflow occurred\n");

 if (reg & INT_STAT_K_INT)
  tca8418_read_keypad(keypad_data);


 reg = 0xff;
 error = tca8418_write_byte(keypad_data, REG_INT_STAT, reg);
 if (error)
  dev_err(&keypad_data->client->dev,
   "unable to clear REG_INT_STAT\n");

 return IRQ_HANDLED;
}
