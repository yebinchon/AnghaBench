
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct applespi_data {int want_cl_led_on; int cmd_msg_lock; } ;


 int applespi_send_cmd_msg (struct applespi_data*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int applespi_set_capsl_led(struct applespi_data *applespi,
      bool capslock_on)
{
 unsigned long flags;
 int sts;

 spin_lock_irqsave(&applespi->cmd_msg_lock, flags);

 applespi->want_cl_led_on = capslock_on;
 sts = applespi_send_cmd_msg(applespi);

 spin_unlock_irqrestore(&applespi->cmd_msg_lock, flags);

 return sts;
}
