
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct serio {struct ps2_gpio_data* port_data; } ;
struct ps2_gpio_data {int irq; int tx_work; } ;


 int disable_irq (int ) ;
 int flush_delayed_work (int *) ;

__attribute__((used)) static void ps2_gpio_close(struct serio *serio)
{
 struct ps2_gpio_data *drvdata = serio->port_data;

 flush_delayed_work(&drvdata->tx_work);
 disable_irq(drvdata->irq);
}
