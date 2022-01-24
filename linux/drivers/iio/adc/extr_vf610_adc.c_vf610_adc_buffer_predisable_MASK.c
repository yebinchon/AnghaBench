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
struct iio_dev {int dummy; } ;

/* Variables and functions */
 int VF610_ADC_ADCON ; 
 unsigned int VF610_ADC_AIEN ; 
 unsigned int VF610_ADC_CONV_DISABLE ; 
 scalar_t__ VF610_REG_ADC_GC ; 
 scalar_t__ VF610_REG_ADC_HC0 ; 
 struct vf610_adc* FUNC0 (struct iio_dev*) ; 
 int FUNC1 (struct iio_dev*) ; 
 int FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (unsigned int,scalar_t__) ; 

__attribute__((used)) static int FUNC4(struct iio_dev *indio_dev)
{
	struct vf610_adc *info = FUNC0(indio_dev);
	unsigned int hc_cfg = 0;
	int val;

	val = FUNC2(info->regs + VF610_REG_ADC_GC);
	val &= ~VF610_ADC_ADCON;
	FUNC3(val, info->regs + VF610_REG_ADC_GC);

	hc_cfg |= VF610_ADC_CONV_DISABLE;
	hc_cfg &= ~VF610_ADC_AIEN;

	FUNC3(hc_cfg, info->regs + VF610_REG_ADC_HC0);

	return FUNC1(indio_dev);
}