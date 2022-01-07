
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int flags; } ;
struct wiimote_data {TYPE_1__ state; } ;
typedef int cmd ;
typedef int __u8 ;


 int WIIPROTO_FLAGS_LEDS ;
 int WIIPROTO_FLAG_LED1 ;
 int WIIPROTO_FLAG_LED2 ;
 int WIIPROTO_FLAG_LED3 ;
 int WIIPROTO_FLAG_LED4 ;
 int WIIPROTO_REQ_LED ;
 int wiimote_queue (struct wiimote_data*,int*,int) ;
 int wiiproto_keep_rumble (struct wiimote_data*,int*) ;

void wiiproto_req_leds(struct wiimote_data *wdata, int leds)
{
 __u8 cmd[2];

 leds &= WIIPROTO_FLAGS_LEDS;
 if ((wdata->state.flags & WIIPROTO_FLAGS_LEDS) == leds)
  return;
 wdata->state.flags = (wdata->state.flags & ~WIIPROTO_FLAGS_LEDS) | leds;

 cmd[0] = WIIPROTO_REQ_LED;
 cmd[1] = 0;

 if (leds & WIIPROTO_FLAG_LED1)
  cmd[1] |= 0x10;
 if (leds & WIIPROTO_FLAG_LED2)
  cmd[1] |= 0x20;
 if (leds & WIIPROTO_FLAG_LED3)
  cmd[1] |= 0x40;
 if (leds & WIIPROTO_FLAG_LED4)
  cmd[1] |= 0x80;

 wiiproto_keep_rumble(wdata, &cmd[1]);
 wiimote_queue(wdata, cmd, sizeof(cmd));
}
