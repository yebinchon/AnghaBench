
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BCM6328_LED_INTERVAL_MS ;

__attribute__((used)) static unsigned long bcm6328_blink_delay(unsigned long delay)
{
 unsigned long bcm6328_delay;

 bcm6328_delay = delay + BCM6328_LED_INTERVAL_MS / 2;
 bcm6328_delay = bcm6328_delay / BCM6328_LED_INTERVAL_MS;
 if (bcm6328_delay == 0)
  bcm6328_delay = 1;

 return bcm6328_delay;
}
