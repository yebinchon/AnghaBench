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
struct regmap {int dummy; } ;
typedef  enum lochnagar_measure_mode { ____Placeholder_lochnagar_measure_mode } lochnagar_measure_mode ;

/* Variables and functions */
 int LOCHNAGAR2_IMON_CONFIGURE_MASK ; 
 int /*<<< orphan*/  LOCHNAGAR2_IMON_CTRL1 ; 
 int /*<<< orphan*/  LOCHNAGAR2_IMON_CTRL2 ; 
 int /*<<< orphan*/  LOCHNAGAR2_IMON_CTRL3 ; 
 unsigned int LOCHNAGAR2_IMON_DONE_MASK ; 
 int LOCHNAGAR2_IMON_ENA_MASK ; 
 int LOCHNAGAR2_IMON_MEASURED_CHANNELS_SHIFT ; 
 int LOCHNAGAR2_IMON_MEASURE_MASK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (struct regmap*,int /*<<< orphan*/ ,unsigned int,unsigned int,int,int) ; 
 int FUNC2 (struct regmap*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC3(struct regmap *regmap, int chan,
			  enum lochnagar_measure_mode mode, int nsamples)
{
	unsigned int val;
	int ret;

	chan = 1 << (chan + LOCHNAGAR2_IMON_MEASURED_CHANNELS_SHIFT);

	ret = FUNC2(regmap, LOCHNAGAR2_IMON_CTRL1,
			   LOCHNAGAR2_IMON_ENA_MASK | chan | mode);
	if (ret < 0)
		return ret;

	ret = FUNC2(regmap, LOCHNAGAR2_IMON_CTRL2, nsamples);
	if (ret < 0)
		return ret;

	ret = FUNC2(regmap, LOCHNAGAR2_IMON_CTRL3,
			   LOCHNAGAR2_IMON_CONFIGURE_MASK);
	if (ret < 0)
		return ret;

	ret =  FUNC1(regmap, LOCHNAGAR2_IMON_CTRL3, val,
					val & LOCHNAGAR2_IMON_DONE_MASK,
					1000, 10000);
	if (ret < 0)
		return ret;

	ret = FUNC2(regmap, LOCHNAGAR2_IMON_CTRL3,
			   LOCHNAGAR2_IMON_MEASURE_MASK);
	if (ret < 0)
		return ret;

	/*
	 * Actual measurement time is ~1.67mS per sample, approximate this
	 * with a 1.5mS per sample msleep and then poll for success up to
	 * ~0.17mS * 1023 (LN2_MAX_NSAMPLES). Normally for smaller values
	 * of nsamples the poll will complete on the first loop due to
	 * other latency in the system.
	 */
	FUNC0((nsamples * 3) / 2);

	ret =  FUNC1(regmap, LOCHNAGAR2_IMON_CTRL3, val,
					val & LOCHNAGAR2_IMON_DONE_MASK,
					5000, 200000);
	if (ret < 0)
		return ret;

	return FUNC2(regmap, LOCHNAGAR2_IMON_CTRL3, 0);
}