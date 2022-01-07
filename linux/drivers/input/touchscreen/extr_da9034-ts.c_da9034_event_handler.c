
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct da9034_touch {int state; int interval_ms; int tsi_work; } ;


 int EVENT_PEN_DOWN ;
 int EVENT_PEN_UP ;
 int EVENT_TIMEDOUT ;
 int EVENT_TSI_READY ;




 int detect_pen_down (struct da9034_touch*,int) ;
 int is_pen_down (struct da9034_touch*) ;
 int mdelay (int) ;
 int msecs_to_jiffies (int ) ;
 int read_tsi (struct da9034_touch*) ;
 int report_pen_down (struct da9034_touch*) ;
 int report_pen_up (struct da9034_touch*) ;
 int schedule_delayed_work (int *,int ) ;
 int start_tsi (struct da9034_touch*) ;
 int stop_tsi (struct da9034_touch*) ;

__attribute__((used)) static void da9034_event_handler(struct da9034_touch *touch, int event)
{
 int err;

 switch (touch->state) {
 case 130:
  if (event != EVENT_PEN_DOWN)
   break;




  err = start_tsi(touch);
  if (err)
   goto err_reset;

  touch->state = 131;
  break;

 case 131:
  if (event != EVENT_TSI_READY)
   break;

  err = read_tsi(touch);
  if (err)
   goto err_reset;




  err = stop_tsi(touch);
  if (err)
   goto err_reset;

  touch->state = 129;






  mdelay(1);
  da9034_event_handler(touch,
         is_pen_down(touch) ? EVENT_PEN_DOWN :
         EVENT_PEN_UP);
  break;

 case 129:
  if (event == EVENT_PEN_DOWN) {
   report_pen_down(touch);
   schedule_delayed_work(&touch->tsi_work,
    msecs_to_jiffies(touch->interval_ms));
   touch->state = 128;
  }

  if (event == EVENT_PEN_UP) {
   report_pen_up(touch);
   touch->state = 130;
  }
  break;

 case 128:
  if (event != EVENT_TIMEDOUT)
   break;

  if (is_pen_down(touch)) {
   start_tsi(touch);
   touch->state = 131;
  } else {
   report_pen_up(touch);
   touch->state = 130;
  }
  break;
 }
 return;

err_reset:
 touch->state = 130;
 stop_tsi(touch);
 detect_pen_down(touch, 1);
}
