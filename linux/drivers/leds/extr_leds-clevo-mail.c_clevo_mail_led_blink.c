
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct led_classdev {int dummy; } ;


 int CLEVO_MAIL_LED_BLINK_0_5HZ ;
 int CLEVO_MAIL_LED_BLINK_1HZ ;
 int EINVAL ;
 int i8042_command (int *,int ) ;
 int i8042_lock_chip () ;
 int i8042_unlock_chip () ;
 int pr_debug (char*,unsigned long,unsigned long) ;

__attribute__((used)) static int clevo_mail_led_blink(struct led_classdev *led_cdev,
    unsigned long *delay_on,
    unsigned long *delay_off)
{
 int status = -EINVAL;

 i8042_lock_chip();

 if (*delay_on == 0 && *delay_off == 0 ) {




  *delay_on = 1000;
  *delay_off = 1000;
  i8042_command(((void*)0), CLEVO_MAIL_LED_BLINK_0_5HZ);
  status = 0;

 } else if (*delay_on == 500 && *delay_off == 500 ) {

  i8042_command(((void*)0), CLEVO_MAIL_LED_BLINK_1HZ);
  status = 0;

 } else if (*delay_on == 1000 && *delay_off == 1000 ) {

  i8042_command(((void*)0), CLEVO_MAIL_LED_BLINK_0_5HZ);
  status = 0;

 } else {
  pr_debug("clevo_mail_led_blink(..., %lu, %lu),"
         " returning -EINVAL (unsupported)\n",
         *delay_on, *delay_off);
 }

 i8042_unlock_chip();

 return status;
}
