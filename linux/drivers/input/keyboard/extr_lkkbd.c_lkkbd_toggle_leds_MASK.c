#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct serio {int dummy; } ;
struct lkkbd {struct serio* serio; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct lkkbd*,unsigned char,unsigned char,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LED_CAPSL ; 
 int /*<<< orphan*/  LED_COMPOSE ; 
 int /*<<< orphan*/  LED_SCROLLL ; 
 int /*<<< orphan*/  LED_SLEEP ; 
 unsigned char LK_CMD_LED_OFF ; 
 unsigned char LK_CMD_LED_ON ; 
 int /*<<< orphan*/  LK_LED_COMPOSE ; 
 int /*<<< orphan*/  LK_LED_SCROLLLOCK ; 
 int /*<<< orphan*/  LK_LED_SHIFTLOCK ; 
 int /*<<< orphan*/  LK_LED_WAIT ; 
 int /*<<< orphan*/  FUNC1 (struct serio*,unsigned char) ; 

__attribute__((used)) static void FUNC2(struct lkkbd *lk)
{
	struct serio *serio = lk->serio;
	unsigned char leds_on = 0;
	unsigned char leds_off = 0;

	FUNC0(lk, leds_on, leds_off, LED_CAPSL, LK_LED_SHIFTLOCK);
	FUNC0(lk, leds_on, leds_off, LED_COMPOSE, LK_LED_COMPOSE);
	FUNC0(lk, leds_on, leds_off, LED_SCROLLL, LK_LED_SCROLLLOCK);
	FUNC0(lk, leds_on, leds_off, LED_SLEEP, LK_LED_WAIT);
	if (leds_on != 0) {
		FUNC1(serio, LK_CMD_LED_ON);
		FUNC1(serio, leds_on);
	}
	if (leds_off != 0) {
		FUNC1(serio, LK_CMD_LED_OFF);
		FUNC1(serio, leds_off);
	}
}