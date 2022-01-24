#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {void* brightness; } ;
struct tca6507_led {scalar_t__ ontime; scalar_t__ offtime; int bank; int blink; int /*<<< orphan*/  num; TYPE_1__ led_cdev; scalar_t__ off_dflt; scalar_t__ on_dflt; struct tca6507_chip* chip; } ;
struct tca6507_chip {struct bank* bank; } ;
struct bank {int level; scalar_t__ level_use; scalar_t__ time_use; scalar_t__ ontime; scalar_t__ offtime; scalar_t__ off_dflt; scalar_t__ on_dflt; } ;

/* Variables and functions */
 int BANK0 ; 
 int BANK1 ; 
 int EINVAL ; 
 void* LED_FULL ; 
 int MASTER ; 
 int /*<<< orphan*/  TCA6507_LS_LED_OFF ; 
 int /*<<< orphan*/  TCA6507_LS_LED_ON ; 
 void* FUNC0 (int) ; 
 int FUNC1 (void*) ; 
 int FUNC2 (int) ; 
 int /*<<< orphan*/ * bank_source ; 
 int /*<<< orphan*/ * blink_source ; 
 scalar_t__ FUNC3 (scalar_t__,int*,int*) ; 
 int /*<<< orphan*/  FUNC4 (struct tca6507_chip*,int,int) ; 
 int /*<<< orphan*/  FUNC5 (struct tca6507_chip*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct tca6507_chip*,int) ; 

__attribute__((used)) static int FUNC7(struct tca6507_led *led)
{
	/* Assign this led to a bank, configuring that bank if
	 * necessary. */
	int level = FUNC1(led->led_cdev.brightness);
	struct tca6507_chip *tca = led->chip;
	int c1, c2;
	int i;
	struct bank *b;
	int need_init = 0;

	led->led_cdev.brightness = FUNC0(level);
	if (level == 0) {
		FUNC5(tca, led->num, TCA6507_LS_LED_OFF);
		return 0;
	}

	if (led->ontime == 0 || led->offtime == 0) {
		/*
		 * Just set the brightness, choosing first usable
		 * bank.  If none perfect, choose best.  Count
		 * backwards so we check MASTER bank first to avoid
		 * wasting a timer.
		 */
		int best = -1;/* full-on */
		int diff = 15-level;

		if (level == 15) {
			FUNC5(tca, led->num, TCA6507_LS_LED_ON);
			return 0;
		}

		for (i = MASTER; i >= BANK0; i--) {
			int d;
			if (tca->bank[i].level == level ||
			    tca->bank[i].level_use == 0) {
				best = i;
				break;
			}
			d = FUNC2(level - tca->bank[i].level);
			if (d < diff) {
				diff = d;
				best = i;
			}
		}
		if (best == -1) {
			/* Best brightness is full-on */
			FUNC5(tca, led->num, TCA6507_LS_LED_ON);
			led->led_cdev.brightness = LED_FULL;
			return 0;
		}

		if (!tca->bank[best].level_use)
			FUNC4(tca, best, level);

		tca->bank[best].level_use++;
		led->bank = best;
		FUNC5(tca, led->num, bank_source[best]);
		led->led_cdev.brightness = FUNC0(tca->bank[best].level);
		return 0;
	}

	/*
	 * We have on/off time so we need to try to allocate a timing
	 * bank.  First check if times are compatible with hardware
	 * and give up if not.
	 */
	if (FUNC3(led->ontime, &c1, &c2) < 0)
		return -EINVAL;
	if (FUNC3(led->offtime, &c1, &c2) < 0)
		return -EINVAL;

	for (i = BANK0; i <= BANK1; i++) {
		if (tca->bank[i].level_use == 0)
			/* not in use - it is ours! */
			break;
		if (tca->bank[i].level != level)
			/* Incompatible level - skip */
			/* FIX: if timer matches we maybe should consider
			 * this anyway...
			 */
			continue;

		if (tca->bank[i].time_use == 0)
			/* Timer not in use, and level matches - use it */
			break;

		if (!(tca->bank[i].on_dflt ||
		      led->on_dflt ||
		      tca->bank[i].ontime == led->ontime))
			/* on time is incompatible */
			continue;

		if (!(tca->bank[i].off_dflt ||
		      led->off_dflt ||
		      tca->bank[i].offtime == led->offtime))
			/* off time is incompatible */
			continue;

		/* looks like a suitable match */
		break;
	}

	if (i > BANK1)
		/* Nothing matches - how sad */
		return -EINVAL;

	b = &tca->bank[i];
	if (b->level_use == 0)
		FUNC4(tca, i, level);
	b->level_use++;
	led->bank = i;

	if (b->on_dflt ||
	    !led->on_dflt ||
	    b->time_use == 0) {
		b->ontime = led->ontime;
		b->on_dflt = led->on_dflt;
		need_init = 1;
	}

	if (b->off_dflt ||
	    !led->off_dflt ||
	    b->time_use == 0) {
		b->offtime = led->offtime;
		b->off_dflt = led->off_dflt;
		need_init = 1;
	}

	if (need_init)
		FUNC6(tca, i);

	led->ontime = b->ontime;
	led->offtime = b->offtime;

	b->time_use++;
	led->blink = 1;
	led->led_cdev.brightness = FUNC0(b->level);
	FUNC5(tca, led->num, blink_source[i]);
	return 0;
}