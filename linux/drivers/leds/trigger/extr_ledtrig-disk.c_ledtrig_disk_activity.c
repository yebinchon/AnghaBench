
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long BLINK_DELAY ;
 int led_trigger_blink_oneshot (int ,unsigned long*,unsigned long*,int ) ;
 int ledtrig_disk ;
 int ledtrig_disk_read ;
 int ledtrig_disk_write ;
 int ledtrig_ide ;

void ledtrig_disk_activity(bool write)
{
 unsigned long blink_delay = BLINK_DELAY;

 led_trigger_blink_oneshot(ledtrig_disk,
      &blink_delay, &blink_delay, 0);
 led_trigger_blink_oneshot(ledtrig_ide,
      &blink_delay, &blink_delay, 0);
 if (write)
  led_trigger_blink_oneshot(ledtrig_disk_write,
       &blink_delay, &blink_delay, 0);
 else
  led_trigger_blink_oneshot(ledtrig_disk_read,
       &blink_delay, &blink_delay, 0);
}
