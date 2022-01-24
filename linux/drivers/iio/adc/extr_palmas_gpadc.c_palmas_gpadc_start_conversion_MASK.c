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
struct palmas_gpadc {int /*<<< orphan*/  dev; int /*<<< orphan*/  palmas; int /*<<< orphan*/  conv_completion; } ;

/* Variables and functions */
 int ETIMEDOUT ; 
 int /*<<< orphan*/  PALMAS_ADC_CONVERSION_TIMEOUT ; 
 int /*<<< orphan*/  PALMAS_GPADC_BASE ; 
 int /*<<< orphan*/  PALMAS_GPADC_SW_CONV0_LSB ; 
 int /*<<< orphan*/  PALMAS_GPADC_SW_SELECT ; 
 int /*<<< orphan*/  PALMAS_GPADC_SW_SELECT_SW_START_CONV0 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int*,int) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct palmas_gpadc *adc, int adc_chan)
{
	unsigned int val;
	int ret;

	FUNC1(&adc->conv_completion);
	ret = FUNC3(adc->palmas, PALMAS_GPADC_BASE,
				PALMAS_GPADC_SW_SELECT,
				PALMAS_GPADC_SW_SELECT_SW_START_CONV0,
				PALMAS_GPADC_SW_SELECT_SW_START_CONV0);
	if (ret < 0) {
		FUNC0(adc->dev, "SELECT_SW_START write failed: %d\n", ret);
		return ret;
	}

	ret = FUNC4(&adc->conv_completion,
				PALMAS_ADC_CONVERSION_TIMEOUT);
	if (ret == 0) {
		FUNC0(adc->dev, "conversion not completed\n");
		return -ETIMEDOUT;
	}

	ret = FUNC2(adc->palmas, PALMAS_GPADC_BASE,
				PALMAS_GPADC_SW_CONV0_LSB, &val, 2);
	if (ret < 0) {
		FUNC0(adc->dev, "SW_CONV0_LSB read failed: %d\n", ret);
		return ret;
	}

	ret = val & 0xFFF;

	return ret;
}