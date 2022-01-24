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
struct TYPE_2__ {int calibration; } ;
struct vf610_adc {TYPE_1__ adc_feature; int /*<<< orphan*/  dev; scalar_t__ regs; int /*<<< orphan*/  completion; } ;

/* Variables and functions */
 int VF610_ADC_AIEN ; 
 int VF610_ADC_CAL ; 
 int VF610_ADC_CALF ; 
 int VF610_ADC_CONV_DISABLE ; 
 int /*<<< orphan*/  VF610_ADC_TIMEOUT ; 
 scalar_t__ VF610_REG_ADC_GC ; 
 scalar_t__ VF610_REG_ADC_GS ; 
 scalar_t__ VF610_REG_ADC_HC0 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC4(struct vf610_adc *info)
{
	int adc_gc, hc_cfg;

	if (!info->adc_feature.calibration)
		return;

	/* enable calibration interrupt */
	hc_cfg = VF610_ADC_AIEN | VF610_ADC_CONV_DISABLE;
	FUNC3(hc_cfg, info->regs + VF610_REG_ADC_HC0);

	adc_gc = FUNC1(info->regs + VF610_REG_ADC_GC);
	FUNC3(adc_gc | VF610_ADC_CAL, info->regs + VF610_REG_ADC_GC);

	if (!FUNC2(&info->completion, VF610_ADC_TIMEOUT))
		FUNC0(info->dev, "Timeout for adc calibration\n");

	adc_gc = FUNC1(info->regs + VF610_REG_ADC_GS);
	if (adc_gc & VF610_ADC_CALF)
		FUNC0(info->dev, "ADC calibration failed\n");

	info->adc_feature.calibration = false;
}