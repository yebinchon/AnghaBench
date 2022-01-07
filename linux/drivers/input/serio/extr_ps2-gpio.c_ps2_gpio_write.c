
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct serio {struct ps2_gpio_data* port_data; } ;
struct ps2_gpio_data {int tx_mutex; int tx_done; } ;


 int SERIO_TIMEOUT ;
 int __ps2_gpio_write (struct serio*,unsigned char) ;
 scalar_t__ in_task () ;
 int msecs_to_jiffies (int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int wait_for_completion_timeout (int *,int ) ;

__attribute__((used)) static int ps2_gpio_write(struct serio *serio, unsigned char val)
{
 struct ps2_gpio_data *drvdata = serio->port_data;
 int ret = 0;

 if (in_task()) {
  mutex_lock(&drvdata->tx_mutex);
  __ps2_gpio_write(serio, val);
  if (!wait_for_completion_timeout(&drvdata->tx_done,
       msecs_to_jiffies(10000)))
   ret = SERIO_TIMEOUT;
  mutex_unlock(&drvdata->tx_mutex);
 } else {
  __ps2_gpio_write(serio, val);
 }

 return ret;
}
