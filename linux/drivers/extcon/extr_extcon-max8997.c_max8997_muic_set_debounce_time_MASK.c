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
struct max8997_muic_info {int /*<<< orphan*/  dev; int /*<<< orphan*/  muic; } ;
typedef  enum max8997_muic_adc_debounce_time { ____Placeholder_max8997_muic_adc_debounce_time } max8997_muic_adc_debounce_time ;

/* Variables and functions */
#define  ADC_DEBOUNCE_TIME_0_5MS 131 
#define  ADC_DEBOUNCE_TIME_10MS 130 
#define  ADC_DEBOUNCE_TIME_25MS 129 
#define  ADC_DEBOUNCE_TIME_38_62MS 128 
 int /*<<< orphan*/  CONTROL3_ADCDBSET_MASK ; 
 int CONTROL3_ADCDBSET_SHIFT ; 
 int EINVAL ; 
 int /*<<< orphan*/  MAX8997_MUIC_REG_CONTROL3 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct max8997_muic_info *info,
		enum max8997_muic_adc_debounce_time time)
{
	int ret;

	switch (time) {
	case ADC_DEBOUNCE_TIME_0_5MS:
	case ADC_DEBOUNCE_TIME_10MS:
	case ADC_DEBOUNCE_TIME_25MS:
	case ADC_DEBOUNCE_TIME_38_62MS:
		ret = FUNC1(info->muic,
					  MAX8997_MUIC_REG_CONTROL3,
					  time << CONTROL3_ADCDBSET_SHIFT,
					  CONTROL3_ADCDBSET_MASK);
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