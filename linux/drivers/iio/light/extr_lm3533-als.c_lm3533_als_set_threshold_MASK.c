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
typedef  scalar_t__ u8 ;
struct lm3533_als {int /*<<< orphan*/  thresh_mutex; int /*<<< orphan*/  lm3533; } ;
struct iio_dev {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EINVAL ; 
 unsigned int LM3533_ALS_THRESH_MAX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 struct lm3533_als* FUNC1 (struct iio_dev*) ; 
 scalar_t__ FUNC2 (unsigned int,int) ; 
 int FUNC3 (int /*<<< orphan*/ ,scalar_t__,scalar_t__*) ; 
 int FUNC4 (int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(struct iio_dev *indio_dev, unsigned nr,
							bool raising, u8 val)
{
	struct lm3533_als *als = FUNC1(indio_dev);
	u8 val2;
	u8 reg, reg2;
	int ret;

	if (nr > LM3533_ALS_THRESH_MAX)
		return -EINVAL;

	reg = FUNC2(nr, raising);
	reg2 = FUNC2(nr, !raising);

	FUNC5(&als->thresh_mutex);
	ret = FUNC3(als->lm3533, reg2, &val2);
	if (ret) {
		FUNC0(&indio_dev->dev, "failed to get threshold\n");
		goto out;
	}
	/*
	 * This device does not allow negative hysteresis (in fact, it uses
	 * whichever value is smaller as the lower bound) so we need to make
	 * sure that thresh_falling <= thresh_raising.
	 */
	if ((raising && (val < val2)) || (!raising && (val > val2))) {
		ret = -EINVAL;
		goto out;
	}

	ret = FUNC4(als->lm3533, reg, val);
	if (ret) {
		FUNC0(&indio_dev->dev, "failed to set threshold\n");
		goto out;
	}
out:
	FUNC6(&als->thresh_mutex);

	return ret;
}