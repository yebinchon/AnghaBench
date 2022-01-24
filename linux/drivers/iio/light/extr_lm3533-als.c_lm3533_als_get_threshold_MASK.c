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
struct lm3533_als {int /*<<< orphan*/  lm3533; } ;
struct iio_dev {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EINVAL ; 
 unsigned int LM3533_ALS_THRESH_MAX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 struct lm3533_als* FUNC1 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int,int) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct iio_dev *indio_dev, unsigned nr,
							bool raising, u8 *val)
{
	struct lm3533_als *als = FUNC1(indio_dev);
	u8 reg;
	int ret;

	if (nr > LM3533_ALS_THRESH_MAX)
		return -EINVAL;

	reg = FUNC2(nr, raising);
	ret = FUNC3(als->lm3533, reg, val);
	if (ret)
		FUNC0(&indio_dev->dev, "failed to get threshold\n");

	return ret;
}