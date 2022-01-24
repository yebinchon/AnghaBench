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
struct da9055_hwmon {int /*<<< orphan*/  irq_lock; int /*<<< orphan*/  done; struct da9055* da9055; } ;
struct da9055 {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int DA9055_ADC_LSB_MASK ; 
 unsigned char DA9055_ADC_MAN_CONV ; 
 unsigned char DA9055_ADC_TJUNC ; 
 int /*<<< orphan*/  DA9055_REG_ADC_MAN ; 
 int /*<<< orphan*/  DA9055_REG_ADC_RES_H ; 
 int /*<<< orphan*/  DA9055_REG_ADC_RES_L ; 
 int EINVAL ; 
 int ETIMEDOUT ; 
 unsigned char* chan_mux ; 
 int FUNC0 (struct da9055*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct da9055*,int /*<<< orphan*/ ,unsigned char) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct da9055_hwmon *hwmon,
					unsigned char channel)
{
	int ret;
	unsigned short calc_data;
	unsigned short data;
	unsigned char mux_sel;
	struct da9055 *da9055 = hwmon->da9055;

	if (channel > DA9055_ADC_TJUNC)
		return -EINVAL;

	FUNC4(&hwmon->irq_lock);

	/* Selects desired MUX for manual conversion */
	mux_sel = chan_mux[channel] | DA9055_ADC_MAN_CONV;

	ret = FUNC1(da9055, DA9055_REG_ADC_MAN, mux_sel);
	if (ret < 0)
		goto err;

	/* Wait for an interrupt */
	if (!FUNC6(&hwmon->done,
					FUNC3(500))) {
		FUNC2(da9055->dev,
			"timeout waiting for ADC conversion interrupt\n");
		ret = -ETIMEDOUT;
		goto err;
	}

	ret = FUNC0(da9055, DA9055_REG_ADC_RES_H);
	if (ret < 0)
		goto err;

	calc_data = (unsigned short)ret;
	data = calc_data << 2;

	ret = FUNC0(da9055, DA9055_REG_ADC_RES_L);
	if (ret < 0)
		goto err;

	calc_data = (unsigned short)(ret & DA9055_ADC_LSB_MASK);
	data |= calc_data;

	ret = data;

err:
	FUNC5(&hwmon->irq_lock);
	return ret;
}