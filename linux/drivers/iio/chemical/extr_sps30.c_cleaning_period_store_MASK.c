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
typedef  int /*<<< orphan*/  u8 ;
struct sps30_state {int /*<<< orphan*/  lock; } ;
struct iio_dev {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  SPS30_AUTO_CLEANING_PERIOD ; 
 int SPS30_AUTO_CLEANING_PERIOD_MAX ; 
 int SPS30_AUTO_CLEANING_PERIOD_MIN ; 
 struct iio_dev* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*) ; 
 struct sps30_state* FUNC2 (struct iio_dev*) ; 
 scalar_t__ FUNC3 (char const*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int,int /*<<< orphan*/ *) ; 
 int FUNC8 (struct sps30_state*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC9 (struct sps30_state*) ; 

__attribute__((used)) static ssize_t FUNC10(struct device *dev,
				       struct device_attribute *attr,
				       const char *buf, size_t len)
{
	struct iio_dev *indio_dev = FUNC0(dev);
	struct sps30_state *state = FUNC2(indio_dev);
	int val, ret;
	u8 tmp[4];

	if (FUNC3(buf, 0, &val))
		return -EINVAL;

	if ((val < SPS30_AUTO_CLEANING_PERIOD_MIN) ||
	    (val > SPS30_AUTO_CLEANING_PERIOD_MAX))
		return -EINVAL;

	FUNC7(val, tmp);

	FUNC5(&state->lock);
	ret = FUNC8(state, SPS30_AUTO_CLEANING_PERIOD, tmp, 0);
	if (ret) {
		FUNC6(&state->lock);
		return ret;
	}

	FUNC4(20);

	/*
	 * sensor requires reset in order to return up to date self cleaning
	 * period
	 */
	ret = FUNC9(state);
	if (ret)
		FUNC1(dev,
			 "period changed but reads will return the old value\n");

	FUNC6(&state->lock);

	return len;
}