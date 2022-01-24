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
struct sps30_state {int /*<<< orphan*/  lock; } ;
struct iio_dev {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  SPS30_START_FAN_CLEANING ; 
 struct iio_dev* FUNC0 (struct device*) ; 
 struct sps30_state* FUNC1 (struct iio_dev*) ; 
 scalar_t__ FUNC2 (char const*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (struct sps30_state*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static ssize_t FUNC6(struct device *dev,
				    struct device_attribute *attr,
				    const char *buf, size_t len)
{
	struct iio_dev *indio_dev = FUNC0(dev);
	struct sps30_state *state = FUNC1(indio_dev);
	int val, ret;

	if (FUNC2(buf, 0, &val) || val != 1)
		return -EINVAL;

	FUNC3(&state->lock);
	ret = FUNC5(state, SPS30_START_FAN_CLEANING, NULL, 0);
	FUNC4(&state->lock);
	if (ret)
		return ret;

	return len;
}