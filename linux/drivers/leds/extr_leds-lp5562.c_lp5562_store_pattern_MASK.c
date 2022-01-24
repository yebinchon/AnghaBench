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
struct lp55xx_predef_pattern {int dummy; } ;
struct lp55xx_led {struct lp55xx_chip* chip; } ;
struct lp55xx_chip {int /*<<< orphan*/  lock; TYPE_1__* pdata; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;
struct TYPE_2__ {int num_patterns; struct lp55xx_predef_pattern* patterns; } ;

/* Variables and functions */
 int EINVAL ; 
 struct lp55xx_led* FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (char const*,int /*<<< orphan*/ ,unsigned long*) ; 
 int FUNC2 (struct lp55xx_chip*,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct device*) ; 

__attribute__((used)) static ssize_t FUNC6(struct device *dev,
				struct device_attribute *attr,
				const char *buf, size_t len)
{
	struct lp55xx_led *led = FUNC0(FUNC5(dev));
	struct lp55xx_chip *chip = led->chip;
	struct lp55xx_predef_pattern *ptn = chip->pdata->patterns;
	int num_patterns = chip->pdata->num_patterns;
	unsigned long mode;
	int ret;

	ret = FUNC1(buf, 0, &mode);
	if (ret)
		return ret;

	if (mode > num_patterns || !ptn)
		return -EINVAL;

	FUNC3(&chip->lock);
	ret = FUNC2(chip, mode);
	FUNC4(&chip->lock);

	if (ret)
		return ret;

	return len;
}