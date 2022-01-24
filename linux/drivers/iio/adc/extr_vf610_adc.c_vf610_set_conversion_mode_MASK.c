#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {unsigned int conv_mode; } ;
struct vf610_adc {TYPE_1__ adc_feature; } ;
struct iio_dev {int /*<<< orphan*/  mlock; } ;
struct iio_chan_spec {int dummy; } ;

/* Variables and functions */
 struct vf610_adc* FUNC0 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct vf610_adc*) ; 
 int /*<<< orphan*/  FUNC4 (struct vf610_adc*) ; 

__attribute__((used)) static int FUNC5(struct iio_dev *indio_dev,
				     const struct iio_chan_spec *chan,
				     unsigned int mode)
{
	struct vf610_adc *info = FUNC0(indio_dev);

	FUNC1(&indio_dev->mlock);
	info->adc_feature.conv_mode = mode;
	FUNC3(info);
	FUNC4(info);
	FUNC2(&indio_dev->mlock);

	return 0;
}