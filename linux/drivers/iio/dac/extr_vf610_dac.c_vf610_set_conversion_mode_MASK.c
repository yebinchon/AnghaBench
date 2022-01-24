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
struct vf610_dac {unsigned int conv_mode; scalar_t__ regs; } ;
struct iio_dev {int /*<<< orphan*/  mlock; } ;
struct iio_chan_spec {int dummy; } ;

/* Variables and functions */
 int VF610_DAC_LPEN ; 
 scalar_t__ VF610_DACx_STATCTRL ; 
 struct vf610_dac* FUNC0 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int,scalar_t__) ; 

__attribute__((used)) static int FUNC5(struct iio_dev *indio_dev,
				const struct iio_chan_spec *chan,
				unsigned int mode)
{
	struct vf610_dac *info = FUNC0(indio_dev);
	int val;

	FUNC1(&indio_dev->mlock);
	info->conv_mode = mode;
	val = FUNC3(info->regs + VF610_DACx_STATCTRL);
	if (mode)
		val |= VF610_DAC_LPEN;
	else
		val &= ~VF610_DAC_LPEN;
	FUNC4(val, info->regs + VF610_DACx_STATCTRL);
	FUNC2(&indio_dev->mlock);

	return 0;
}