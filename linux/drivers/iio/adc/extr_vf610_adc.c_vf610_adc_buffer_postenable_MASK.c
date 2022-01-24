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
struct vf610_adc {scalar_t__ regs; } ;
struct iio_dev {int /*<<< orphan*/  masklength; int /*<<< orphan*/  active_scan_mask; } ;

/* Variables and functions */
 int FUNC0 (unsigned int) ; 
 int VF610_ADC_ADCON ; 
 int VF610_ADC_AIEN ; 
 scalar_t__ VF610_REG_ADC_GC ; 
 scalar_t__ VF610_REG_ADC_HC0 ; 
 unsigned int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct vf610_adc* FUNC2 (struct iio_dev*) ; 
 int FUNC3 (struct iio_dev*) ; 
 int FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int,scalar_t__) ; 

__attribute__((used)) static int FUNC6(struct iio_dev *indio_dev)
{
	struct vf610_adc *info = FUNC2(indio_dev);
	unsigned int channel;
	int ret;
	int val;

	ret = FUNC3(indio_dev);
	if (ret)
		return ret;

	val = FUNC4(info->regs + VF610_REG_ADC_GC);
	val |= VF610_ADC_ADCON;
	FUNC5(val, info->regs + VF610_REG_ADC_GC);

	channel = FUNC1(indio_dev->active_scan_mask,
						indio_dev->masklength);

	val = FUNC0(channel);
	val |= VF610_ADC_AIEN;

	FUNC5(val, info->regs + VF610_REG_ADC_HC0);

	return 0;
}