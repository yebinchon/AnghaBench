
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct serio {struct ps2_gpio_data* port_data; } ;
struct ps2_gpio_data {int irq; } ;


 int enable_irq (int ) ;

__attribute__((used)) static int ps2_gpio_open(struct serio *serio)
{
 struct ps2_gpio_data *drvdata = serio->port_data;

 enable_irq(drvdata->irq);
 return 0;
}
