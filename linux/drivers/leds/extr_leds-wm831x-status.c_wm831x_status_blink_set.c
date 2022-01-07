
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wm831x_status {int blink_time; int blink_cyc; int blink; int value_lock; } ;
struct led_classdev {int dummy; } ;


 int EINVAL ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct wm831x_status* to_wm831x_status (struct led_classdev*) ;
 int wm831x_status_set (struct wm831x_status*) ;

__attribute__((used)) static int wm831x_status_blink_set(struct led_classdev *led_cdev,
       unsigned long *delay_on,
       unsigned long *delay_off)
{
 struct wm831x_status *led = to_wm831x_status(led_cdev);
 unsigned long flags;
 int ret = 0;


 if (*delay_on == 0 && *delay_off == 0) {
  *delay_on = 250;
  *delay_off = 250;
 }

 spin_lock_irqsave(&led->value_lock, flags);



 switch (*delay_on) {
 case 1000:
  led->blink_time = 0;
  break;
 case 250:
  led->blink_time = 1;
  break;
 case 125:
  led->blink_time = 2;
  break;
 case 62:
 case 63:

  led->blink_time = 3;
  break;
 default:
  ret = -EINVAL;
  break;
 }

 if (ret == 0) {
  switch (*delay_off / *delay_on) {
  case 1:
   led->blink_cyc = 0;
   break;
  case 3:
   led->blink_cyc = 1;
   break;
  case 4:
   led->blink_cyc = 2;
   break;
  case 8:
   led->blink_cyc = 3;
   break;
  default:
   ret = -EINVAL;
   break;
  }
 }

 if (ret == 0)
  led->blink = 1;
 else
  led->blink = 0;

 spin_unlock_irqrestore(&led->value_lock, flags);
 wm831x_status_set(led);

 return ret;
}
