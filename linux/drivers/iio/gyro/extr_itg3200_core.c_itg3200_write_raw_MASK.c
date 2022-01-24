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
struct iio_dev {int /*<<< orphan*/  mlock; } ;
struct iio_chan_spec {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
#define  IIO_CHAN_INFO_SAMP_FREQ 128 
 int ITG3200_DLPF_CFG_MASK ; 
 int /*<<< orphan*/  ITG3200_REG_DLPF ; 
 int /*<<< orphan*/  ITG3200_REG_SAMPLE_RATE_DIV ; 
 int FUNC0 (struct iio_dev*,int /*<<< orphan*/ ,int*) ; 
 int FUNC1 (struct iio_dev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct iio_dev *indio_dev,
			     struct iio_chan_spec const *chan,
			     int val,
			     int val2,
			     long mask)
{
	int ret;
	u8 t;

	switch (mask) {
	case IIO_CHAN_INFO_SAMP_FREQ:
		if (val == 0 || val2 != 0)
			return -EINVAL;

		FUNC2(&indio_dev->mlock);

		ret = FUNC0(indio_dev, ITG3200_REG_DLPF, &t);
		if (ret) {
			FUNC3(&indio_dev->mlock);
			return ret;
		}
		t = ((t & ITG3200_DLPF_CFG_MASK) ? 1000u : 8000u) / val - 1;

		ret = FUNC1(indio_dev,
					  ITG3200_REG_SAMPLE_RATE_DIV,
					  t);

		FUNC3(&indio_dev->mlock);
	return ret;

	default:
		return -EINVAL;
	}
}