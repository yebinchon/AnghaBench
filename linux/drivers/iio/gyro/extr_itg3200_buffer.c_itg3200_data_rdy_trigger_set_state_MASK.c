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
struct iio_trigger {int dummy; } ;
struct iio_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ITG3200_IRQ_DATA_RDY_ENABLE ; 
 int /*<<< orphan*/  ITG3200_REG_IRQ_CONFIG ; 
 struct iio_dev* FUNC0 (struct iio_trigger*) ; 
 int FUNC1 (struct iio_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC2 (struct iio_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct iio_trigger *trig,
		bool state)
{
	struct iio_dev *indio_dev = FUNC0(trig);
	int ret;
	u8 msc;

	ret = FUNC1(indio_dev, ITG3200_REG_IRQ_CONFIG, &msc);
	if (ret)
		goto error_ret;

	if (state)
		msc |= ITG3200_IRQ_DATA_RDY_ENABLE;
	else
		msc &= ~ITG3200_IRQ_DATA_RDY_ENABLE;

	ret = FUNC2(indio_dev, ITG3200_REG_IRQ_CONFIG, msc);
	if (ret)
		goto error_ret;

error_ret:
	return ret;

}