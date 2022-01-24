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
struct lp55xx_led {struct lp55xx_chip* chip; } ;
struct lp55xx_chip {TYPE_1__* engines; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;
struct TYPE_2__ {int /*<<< orphan*/  led_mux; } ;

/* Variables and functions */
 int /*<<< orphan*/  LP5523_MAX_LEDS ; 
 struct lp55xx_led* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct device*) ; 

__attribute__((used)) static ssize_t FUNC4(struct device *dev,
			    struct device_attribute *attr,
			    char *buf, int nr)
{
	struct lp55xx_led *led = FUNC0(FUNC3(dev));
	struct lp55xx_chip *chip = led->chip;
	char mux[LP5523_MAX_LEDS + 1];

	FUNC1(chip->engines[nr - 1].led_mux, mux);

	return FUNC2(buf, "%s\n", mux);
}