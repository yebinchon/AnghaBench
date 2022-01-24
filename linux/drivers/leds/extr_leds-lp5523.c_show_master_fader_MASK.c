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
typedef  int u8 ;
struct lp55xx_led {struct lp55xx_chip* chip; } ;
struct lp55xx_chip {int /*<<< orphan*/  lock; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;

/* Variables and functions */
 scalar_t__ LP5523_REG_MASTER_FADER_BASE ; 
 struct lp55xx_led* FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct lp55xx_chip*,scalar_t__,int*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct device*) ; 

__attribute__((used)) static ssize_t FUNC6(struct device *dev,
				 struct device_attribute *attr,
				 char *buf, int nr)
{
	struct lp55xx_led *led = FUNC0(FUNC5(dev));
	struct lp55xx_chip *chip = led->chip;
	int ret;
	u8 val;

	FUNC2(&chip->lock);
	ret = FUNC1(chip, LP5523_REG_MASTER_FADER_BASE + nr - 1, &val);
	FUNC3(&chip->lock);

	if (ret == 0)
		ret = FUNC4(buf, "%u\n", val);

	return ret;
}