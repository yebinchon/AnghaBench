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
typedef  unsigned int u32 ;
struct mxs_lradc_ts {int /*<<< orphan*/  dev; scalar_t__ base; } ;

/* Variables and functions */
 scalar_t__ LRADC_CTRL1 ; 
 unsigned int FUNC0 (unsigned int) ; 
 int LRADC_RESOLUTION ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 unsigned int FUNC3 (struct mxs_lradc_ts*,unsigned int) ; 
 unsigned int FUNC4 (scalar_t__) ; 

__attribute__((used)) static unsigned int FUNC5(struct mxs_lradc_ts *ts,
					unsigned int ch1, unsigned int ch2)
{
	u32 reg, mask;
	unsigned int pressure, m1, m2;

	mask = FUNC0(ch1) | FUNC0(ch2);
	reg = FUNC4(ts->base + LRADC_CTRL1) & mask;

	while (reg != mask) {
		reg = FUNC4(ts->base + LRADC_CTRL1) & mask;
		FUNC1(ts->dev, "One channel is still busy: %X\n", reg);
	}

	m1 = FUNC3(ts, ch1);
	m2 = FUNC3(ts, ch2);

	if (m2 == 0) {
		FUNC2(ts->dev, "Cannot calculate pressure\n");
		return 1 << (LRADC_RESOLUTION - 1);
	}

	/* simply scale the value from 0 ... max ADC resolution */
	pressure = m1;
	pressure *= (1 << LRADC_RESOLUTION);
	pressure /= m2;

	FUNC1(ts->dev, "Pressure = %u\n", pressure);
	return pressure;
}