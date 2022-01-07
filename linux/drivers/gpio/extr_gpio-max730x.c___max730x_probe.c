
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct max7301_platform_data {int base; int input_pullup_active; } ;
struct TYPE_5__ {int base; int (* direction_input ) (TYPE_2__*,int) ;int can_sleep; int owner; struct device* parent; int ngpio; int set; int direction_output; int get; int label; } ;
struct max7301 {int* port_config; int lock; TYPE_2__ chip; int input_pullup_active; int (* write ) (struct device*,int,int) ;struct device* dev; } ;
struct device {TYPE_1__* driver; } ;
struct TYPE_4__ {int name; } ;


 int PIN_NUMBER ;
 int THIS_MODULE ;
 struct max7301_platform_data* dev_get_platdata (struct device*) ;
 int dev_set_drvdata (struct device*,struct max7301*) ;
 int gpiochip_add_data (TYPE_2__*,struct max7301*) ;
 int max7301_direction_input (TYPE_2__*,int) ;
 int max7301_direction_output ;
 int max7301_get ;
 int max7301_set ;
 int mutex_destroy (int *) ;
 int mutex_init (int *) ;
 int stub1 (struct device*,int,int) ;

int __max730x_probe(struct max7301 *ts)
{
 struct device *dev = ts->dev;
 struct max7301_platform_data *pdata;
 int i, ret;

 pdata = dev_get_platdata(dev);

 mutex_init(&ts->lock);
 dev_set_drvdata(dev, ts);


 ts->write(dev, 0x04, 0x01);

 if (pdata) {
  ts->input_pullup_active = pdata->input_pullup_active;
  ts->chip.base = pdata->base;
 } else {
  ts->chip.base = -1;
 }
 ts->chip.label = dev->driver->name;

 ts->chip.direction_input = max7301_direction_input;
 ts->chip.get = max7301_get;
 ts->chip.direction_output = max7301_direction_output;
 ts->chip.set = max7301_set;

 ts->chip.ngpio = PIN_NUMBER;
 ts->chip.can_sleep = 1;
 ts->chip.parent = dev;
 ts->chip.owner = THIS_MODULE;

 ret = gpiochip_add_data(&ts->chip, ts);
 if (ret)
  goto exit_destroy;





 for (i = 1; i < 8; i++) {
  int j;






  ts->port_config[i] = 0xAA;
  for (j = 0; j < 4; j++) {
   int offset = (i - 1) * 4 + j;
   ret = max7301_direction_input(&ts->chip, offset);
   if (ret)
    goto exit_destroy;
  }
 }

 return ret;

exit_destroy:
 mutex_destroy(&ts->lock);
 return ret;
}
