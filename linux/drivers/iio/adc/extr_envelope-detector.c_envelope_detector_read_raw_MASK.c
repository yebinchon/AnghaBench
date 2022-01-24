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
struct iio_dev {int dummy; } ;
struct iio_chan_spec {int dummy; } ;
struct envelope {int high; int dac_max; int invert; int level; int /*<<< orphan*/  read_lock; int /*<<< orphan*/  dac; int /*<<< orphan*/  done; int /*<<< orphan*/  low; } ;

/* Variables and functions */
 int EINVAL ; 
#define  IIO_CHAN_INFO_RAW 129 
#define  IIO_CHAN_INFO_SCALE 128 
 int IIO_VAL_INT ; 
 int /*<<< orphan*/  FUNC0 (struct envelope*) ; 
 struct envelope* FUNC1 (struct iio_dev*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int*,int*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct iio_dev *indio_dev,
				      struct iio_chan_spec const *chan,
				      int *val, int *val2, long mask)
{
	struct envelope *env = FUNC1(indio_dev);
	int ret;

	switch (mask) {
	case IIO_CHAN_INFO_RAW:
		/*
		 * When invert is active, start with high=max+1 and low=0
		 * since we will end up with the low value when the
		 * termination criteria is fulfilled (rounding down). And
		 * start with high=max and low=-1 when invert is not active
		 * since we will end up with the high value in that case.
		 * This ensures that the returned value in both cases are
		 * in the same range as the DAC and is a value that has not
		 * triggered the comparator.
		 */
		FUNC3(&env->read_lock);
		env->high = env->dac_max + env->invert;
		env->low = -1 + env->invert;
		FUNC0(env);
		FUNC5(&env->done);
		if (env->level < 0) {
			ret = env->level;
			goto err_unlock;
		}
		*val = env->invert ? env->dac_max - env->level : env->level;
		FUNC4(&env->read_lock);

		return IIO_VAL_INT;

	case IIO_CHAN_INFO_SCALE:
		return FUNC2(env->dac, val, val2);
	}

	return -EINVAL;

err_unlock:
	FUNC4(&env->read_lock);
	return ret;
}