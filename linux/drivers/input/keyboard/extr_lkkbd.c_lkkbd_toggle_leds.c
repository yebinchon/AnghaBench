
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct serio {int dummy; } ;
struct lkkbd {struct serio* serio; } ;


 int CHECK_LED (struct lkkbd*,unsigned char,unsigned char,int ,int ) ;
 int LED_CAPSL ;
 int LED_COMPOSE ;
 int LED_SCROLLL ;
 int LED_SLEEP ;
 unsigned char LK_CMD_LED_OFF ;
 unsigned char LK_CMD_LED_ON ;
 int LK_LED_COMPOSE ;
 int LK_LED_SCROLLLOCK ;
 int LK_LED_SHIFTLOCK ;
 int LK_LED_WAIT ;
 int serio_write (struct serio*,unsigned char) ;

__attribute__((used)) static void lkkbd_toggle_leds(struct lkkbd *lk)
{
 struct serio *serio = lk->serio;
 unsigned char leds_on = 0;
 unsigned char leds_off = 0;

 CHECK_LED(lk, leds_on, leds_off, LED_CAPSL, LK_LED_SHIFTLOCK);
 CHECK_LED(lk, leds_on, leds_off, LED_COMPOSE, LK_LED_COMPOSE);
 CHECK_LED(lk, leds_on, leds_off, LED_SCROLLL, LK_LED_SCROLLLOCK);
 CHECK_LED(lk, leds_on, leds_off, LED_SLEEP, LK_LED_WAIT);
 if (leds_on != 0) {
  serio_write(serio, LK_CMD_LED_ON);
  serio_write(serio, leds_on);
 }
 if (leds_off != 0) {
  serio_write(serio, LK_CMD_LED_OFF);
  serio_write(serio, leds_off);
 }
}
