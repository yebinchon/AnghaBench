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
struct lp55xx_led {struct lp55xx_chip* chip; } ;
struct lp55xx_engine {int /*<<< orphan*/  mode; } ;
struct lp55xx_chip {int engine_idx; int /*<<< orphan*/  lock; struct lp55xx_engine* engines; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  size_t ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  LP55XX_ENGINE_DISABLED ; 
 int /*<<< orphan*/  LP55XX_ENGINE_LOAD ; 
 int /*<<< orphan*/  LP55XX_ENGINE_RUN ; 
 struct lp55xx_led* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct lp55xx_chip*) ; 
 int /*<<< orphan*/  FUNC2 (struct lp55xx_chip*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct lp55xx_chip*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char const*,char*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct device*) ; 

__attribute__((used)) static ssize_t FUNC8(struct device *dev,
				 struct device_attribute *attr,
				 const char *buf, size_t len, int nr)
{
	struct lp55xx_led *led = FUNC0(FUNC7(dev));
	struct lp55xx_chip *chip = led->chip;
	struct lp55xx_engine *engine = &chip->engines[nr - 1];

	FUNC4(&chip->lock);

	chip->engine_idx = nr;

	if (!FUNC6(buf, "run", 3)) {
		FUNC2(chip, true);
		engine->mode = LP55XX_ENGINE_RUN;
	} else if (!FUNC6(buf, "load", 4)) {
		FUNC3(chip);
		FUNC1(chip);
		engine->mode = LP55XX_ENGINE_LOAD;
	} else if (!FUNC6(buf, "disabled", 8)) {
		FUNC3(chip);
		engine->mode = LP55XX_ENGINE_DISABLED;
	}

	FUNC5(&chip->lock);

	return len;
}