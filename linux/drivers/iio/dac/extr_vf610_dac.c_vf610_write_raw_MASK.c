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
struct vf610_dac {int /*<<< orphan*/  regs; } ;
struct iio_dev {int /*<<< orphan*/  mlock; } ;
struct iio_chan_spec {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
#define  IIO_CHAN_INFO_RAW 128 
 int /*<<< orphan*/  FUNC0 (int) ; 
 struct vf610_dac* FUNC1 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct iio_dev *indio_dev,
			struct iio_chan_spec const *chan,
			int val, int val2,
			long mask)
{
	struct vf610_dac *info = FUNC1(indio_dev);

	switch (mask) {
	case IIO_CHAN_INFO_RAW:
		FUNC2(&indio_dev->mlock);
		FUNC4(FUNC0(val), info->regs);
		FUNC3(&indio_dev->mlock);
		return 0;

	default:
		return -EINVAL;
	}
}