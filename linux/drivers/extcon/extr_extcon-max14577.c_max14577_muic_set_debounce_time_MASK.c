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
typedef  int u8 ;
struct max14577_muic_info {int /*<<< orphan*/  dev; TYPE_1__* max14577; } ;
typedef  enum max14577_muic_adc_debounce_time { ____Placeholder_max14577_muic_adc_debounce_time } max14577_muic_adc_debounce_time ;
struct TYPE_2__ {int /*<<< orphan*/  regmap; } ;

/* Variables and functions */
#define  ADC_DEBOUNCE_TIME_10MS 131 
#define  ADC_DEBOUNCE_TIME_25MS 130 
#define  ADC_DEBOUNCE_TIME_38_62MS 129 
#define  ADC_DEBOUNCE_TIME_5MS 128 
 int /*<<< orphan*/  CTRL3_ADCDBSET_MASK ; 
 int CTRL3_ADCDBSET_SHIFT ; 
 int EINVAL ; 
 int /*<<< orphan*/  MAX14577_MUIC_REG_CONTROL3 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC2(struct max14577_muic_info *info,
		enum max14577_muic_adc_debounce_time time)
{
	u8 ret;

	switch (time) {
	case ADC_DEBOUNCE_TIME_5MS:
	case ADC_DEBOUNCE_TIME_10MS:
	case ADC_DEBOUNCE_TIME_25MS:
	case ADC_DEBOUNCE_TIME_38_62MS:
		ret = FUNC1(info->max14577->regmap,
					  MAX14577_MUIC_REG_CONTROL3,
					  CTRL3_ADCDBSET_MASK,
					  time << CTRL3_ADCDBSET_SHIFT);
		if (ret) {
			FUNC0(info->dev, "failed to set ADC debounce time\n");
			return ret;
		}
		break;
	default:
		FUNC0(info->dev, "invalid ADC debounce time\n");
		return -EINVAL;
	}

	return 0;
}