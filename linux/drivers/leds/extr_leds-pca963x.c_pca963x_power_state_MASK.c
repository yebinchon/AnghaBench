#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ brightness; } ;
struct pca963x_led {TYPE_1__* chip; int /*<<< orphan*/  led_num; TYPE_2__ led_cdev; } ;
struct TYPE_3__ {unsigned long leds_on; int /*<<< orphan*/  client; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  PCA963X_MODE1 ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,unsigned long*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,unsigned long*) ; 

__attribute__((used)) static int FUNC4(struct pca963x_led *pca963x)
{
	unsigned long *leds_on = &pca963x->chip->leds_on;
	unsigned long cached_leds = pca963x->chip->leds_on;

	if (pca963x->led_cdev.brightness)
		FUNC3(pca963x->led_num, leds_on);
	else
		FUNC1(pca963x->led_num, leds_on);

	if (!(*leds_on) != !cached_leds)
		return FUNC2(pca963x->chip->client,
			PCA963X_MODE1, *leds_on ? 0 : FUNC0(4));

	return 0;
}