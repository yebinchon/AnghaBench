
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct serio {struct ps2_gpio_data* port_data; } ;
struct ps2_gpio_data {unsigned char tx_byte; int tx_work; int mode; int gpio_clk; int irq; } ;


 int PS2_MODE_TX ;
 int disable_irq_nosync (int ) ;
 int gpiod_direction_output (int ,int ) ;
 int schedule_delayed_work (int *,int ) ;
 int usecs_to_jiffies (int) ;

__attribute__((used)) static int __ps2_gpio_write(struct serio *serio, unsigned char val)
{
 struct ps2_gpio_data *drvdata = serio->port_data;

 disable_irq_nosync(drvdata->irq);
 gpiod_direction_output(drvdata->gpio_clk, 0);

 drvdata->mode = PS2_MODE_TX;
 drvdata->tx_byte = val;

 schedule_delayed_work(&drvdata->tx_work, usecs_to_jiffies(200));

 return 0;
}
