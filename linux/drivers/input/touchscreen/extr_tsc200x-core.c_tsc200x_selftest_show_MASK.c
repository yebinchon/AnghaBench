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
struct tsc200x {int /*<<< orphan*/  mutex; int /*<<< orphan*/  regmap; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 unsigned int MAX_12BIT ; 
 int /*<<< orphan*/  TSC200X_REG_TEMP_HIGH ; 
 int /*<<< orphan*/  FUNC0 (struct tsc200x*) ; 
 int /*<<< orphan*/  FUNC1 (struct tsc200x*) ; 
 struct tsc200x* FUNC2 (struct device*) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*,unsigned int,...) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int*) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC8 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct tsc200x*) ; 

__attribute__((used)) static ssize_t FUNC10(struct device *dev,
				     struct device_attribute *attr,
				     char *buf)
{
	struct tsc200x *ts = FUNC2(dev);
	unsigned int temp_high;
	unsigned int temp_high_orig;
	unsigned int temp_high_test;
	bool success = true;
	int error;

	FUNC4(&ts->mutex);

	/*
	 * Test TSC200X communications via temp high register.
	 */
	FUNC0(ts);

	error = FUNC6(ts->regmap, TSC200X_REG_TEMP_HIGH, &temp_high_orig);
	if (error) {
		FUNC3(dev, "selftest failed: read error %d\n", error);
		success = false;
		goto out;
	}

	temp_high_test = (temp_high_orig - 1) & MAX_12BIT;

	error = FUNC7(ts->regmap, TSC200X_REG_TEMP_HIGH, temp_high_test);
	if (error) {
		FUNC3(dev, "selftest failed: write error %d\n", error);
		success = false;
		goto out;
	}

	error = FUNC6(ts->regmap, TSC200X_REG_TEMP_HIGH, &temp_high);
	if (error) {
		FUNC3(dev, "selftest failed: read error %d after write\n",
			 error);
		success = false;
		goto out;
	}

	if (temp_high != temp_high_test) {
		FUNC3(dev, "selftest failed: %d != %d\n",
			 temp_high, temp_high_test);
		success = false;
	}

	/* hardware reset */
	FUNC9(ts);

	if (!success)
		goto out;

	/* test that the reset really happened */
	error = FUNC6(ts->regmap, TSC200X_REG_TEMP_HIGH, &temp_high);
	if (error) {
		FUNC3(dev, "selftest failed: read error %d after reset\n",
			 error);
		success = false;
		goto out;
	}

	if (temp_high != temp_high_orig) {
		FUNC3(dev, "selftest failed after reset: %d != %d\n",
			 temp_high, temp_high_orig);
		success = false;
	}

out:
	FUNC1(ts);
	FUNC5(&ts->mutex);

	return FUNC8(buf, "%d\n", success);
}