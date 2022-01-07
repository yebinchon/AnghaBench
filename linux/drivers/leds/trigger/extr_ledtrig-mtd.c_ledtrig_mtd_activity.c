
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long BLINK_DELAY ;
 int led_trigger_blink_oneshot (int ,unsigned long*,unsigned long*,int ) ;
 int ledtrig_mtd ;
 int ledtrig_nand ;

void ledtrig_mtd_activity(void)
{
 unsigned long blink_delay = BLINK_DELAY;

 led_trigger_blink_oneshot(ledtrig_mtd,
      &blink_delay, &blink_delay, 0);
 led_trigger_blink_oneshot(ledtrig_nand,
      &blink_delay, &blink_delay, 0);
}
