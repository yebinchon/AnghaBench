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
struct lm3533_als {int /*<<< orphan*/  zone; } ;
struct iio_dev {int dummy; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IIO_EV_DIR_EITHER ; 
 int /*<<< orphan*/  IIO_EV_TYPE_THRESH ; 
 int /*<<< orphan*/  IIO_LIGHT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int FUNC1 (struct iio_dev*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct iio_dev*) ; 
 struct lm3533_als* FUNC4 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC5 (struct iio_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static irqreturn_t FUNC6(int irq, void *dev_id)
{

	struct iio_dev *indio_dev = dev_id;
	struct lm3533_als *als = FUNC4(indio_dev);
	u8 zone;
	int ret;

	/* Clear interrupt by reading the ALS zone register. */
	ret = FUNC1(indio_dev, &zone);
	if (ret)
		goto out;

	FUNC2(&als->zone, zone);

	FUNC5(indio_dev,
		       FUNC0(IIO_LIGHT,
					    0,
					    IIO_EV_TYPE_THRESH,
					    IIO_EV_DIR_EITHER),
		       FUNC3(indio_dev));
out:
	return IRQ_HANDLED;
}