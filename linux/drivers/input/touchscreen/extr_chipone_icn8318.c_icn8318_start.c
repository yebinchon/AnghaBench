
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct input_dev {int dummy; } ;
struct icn8318_data {int wake_gpio; TYPE_1__* client; } ;
struct TYPE_2__ {int irq; } ;


 int enable_irq (int ) ;
 int gpiod_set_value_cansleep (int ,int) ;
 struct icn8318_data* input_get_drvdata (struct input_dev*) ;

__attribute__((used)) static int icn8318_start(struct input_dev *dev)
{
 struct icn8318_data *data = input_get_drvdata(dev);

 enable_irq(data->client->irq);
 gpiod_set_value_cansleep(data->wake_gpio, 1);

 return 0;
}
