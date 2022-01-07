
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct input_dev {int dummy; } ;
struct bu21029_ts_data {int vdd; int timer; TYPE_1__* client; } ;
struct TYPE_2__ {int irq; } ;


 int bu21029_put_chip_in_reset (struct bu21029_ts_data*) ;
 int del_timer_sync (int *) ;
 int disable_irq (int ) ;
 struct bu21029_ts_data* input_get_drvdata (struct input_dev*) ;
 int regulator_disable (int ) ;

__attribute__((used)) static void bu21029_stop_chip(struct input_dev *dev)
{
 struct bu21029_ts_data *bu21029 = input_get_drvdata(dev);

 disable_irq(bu21029->client->irq);
 del_timer_sync(&bu21029->timer);

 bu21029_put_chip_in_reset(bu21029);
 regulator_disable(bu21029->vdd);
}
