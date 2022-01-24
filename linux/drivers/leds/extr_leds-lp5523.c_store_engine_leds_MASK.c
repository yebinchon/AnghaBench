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
typedef  int /*<<< orphan*/  u16 ;
struct lp55xx_led {struct lp55xx_chip* chip; } ;
struct lp55xx_engine {scalar_t__ mode; } ;
struct lp55xx_chip {int engine_idx; int /*<<< orphan*/  lock; struct lp55xx_engine* engines; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  size_t ssize_t ;

/* Variables and functions */
 size_t EINVAL ; 
 scalar_t__ LP55XX_ENGINE_LOAD ; 
 struct lp55xx_led* FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct lp55xx_chip*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC2 (char const*,int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct device*) ; 

__attribute__((used)) static ssize_t FUNC6(struct device *dev,
			     struct device_attribute *attr,
			     const char *buf, size_t len, int nr)
{
	struct lp55xx_led *led = FUNC0(FUNC5(dev));
	struct lp55xx_chip *chip = led->chip;
	struct lp55xx_engine *engine = &chip->engines[nr - 1];
	u16 mux = 0;
	ssize_t ret;

	if (FUNC2(buf, &mux, len))
		return -EINVAL;

	FUNC3(&chip->lock);

	chip->engine_idx = nr;
	ret = -EINVAL;

	if (engine->mode != LP55XX_ENGINE_LOAD)
		goto leave;

	if (FUNC1(chip, mux, nr))
		goto leave;

	ret = len;
leave:
	FUNC4(&chip->lock);
	return ret;
}