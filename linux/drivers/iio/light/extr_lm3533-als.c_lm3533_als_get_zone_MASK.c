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
struct lm3533_als {int /*<<< orphan*/  zone; int /*<<< orphan*/  flags; } ;
struct iio_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  LM3533_ALS_FLAG_INT_ENABLED ; 
 int FUNC0 (struct iio_dev*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct lm3533_als* FUNC2 (struct iio_dev*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct iio_dev *indio_dev, u8 *zone)
{
	struct lm3533_als *als = FUNC2(indio_dev);
	int ret;

	if (FUNC3(LM3533_ALS_FLAG_INT_ENABLED, &als->flags)) {
		*zone = FUNC1(&als->zone);
	} else {
		ret = FUNC0(indio_dev, zone);
		if (ret)
			return ret;
	}

	return 0;
}