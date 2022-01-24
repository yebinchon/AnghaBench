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
struct lm3533_als {int /*<<< orphan*/  lm3533; } ;
struct iio_dev {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int LM3533_ALS_INT_ENABLE_MASK ; 
 int /*<<< orphan*/  LM3533_REG_ALS_ZONE_INFO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 struct lm3533_als* FUNC1 (struct iio_dev*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 

__attribute__((used)) static int FUNC3(struct iio_dev *indio_dev, int *enable)
{
	struct lm3533_als *als = FUNC1(indio_dev);
	u8 mask = LM3533_ALS_INT_ENABLE_MASK;
	u8 val;
	int ret;

	ret = FUNC2(als->lm3533, LM3533_REG_ALS_ZONE_INFO, &val);
	if (ret) {
		FUNC0(&indio_dev->dev, "failed to get int mode\n");
		return ret;
	}

	*enable = !!(val & mask);

	return 0;
}