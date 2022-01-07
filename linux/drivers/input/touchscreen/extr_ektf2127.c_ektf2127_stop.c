
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct input_dev {int dummy; } ;
struct ektf2127_ts {int power_gpios; TYPE_1__* client; } ;
struct TYPE_2__ {int irq; } ;


 int disable_irq (int ) ;
 int gpiod_set_value_cansleep (int ,int ) ;
 struct ektf2127_ts* input_get_drvdata (struct input_dev*) ;

__attribute__((used)) static void ektf2127_stop(struct input_dev *dev)
{
 struct ektf2127_ts *ts = input_get_drvdata(dev);

 disable_irq(ts->client->irq);
 gpiod_set_value_cansleep(ts->power_gpios, 0);
}
