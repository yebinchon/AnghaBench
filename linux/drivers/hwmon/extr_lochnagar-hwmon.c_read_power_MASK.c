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
typedef  long u64 ;
struct lochnagar_hwmon {int* power_nsamples; } ;
struct device {int dummy; } ;

/* Variables and functions */
 long FUNC0 (long,int) ; 
 int /*<<< orphan*/  LN2_CURR ; 
 int LN2_PWR_UNITS ; 
 int /*<<< orphan*/  LN2_VOLT ; 
 long LONG_MAX ; 
 long FUNC1 (long) ; 
 struct lochnagar_hwmon* FUNC2 (struct device*) ; 
 int /*<<< orphan*/ * lochnagar_chan_names ; 
 int FUNC3 (struct device*,int,int /*<<< orphan*/ ,int,int,long*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct device *dev, int chan, long *val)
{
	struct lochnagar_hwmon *priv = FUNC2(dev);
	int nsamples = priv->power_nsamples[chan];
	u64 power;
	int ret;

	if (!FUNC4("SYSVDD", lochnagar_chan_names[chan])) {
		power = 5 * LN2_PWR_UNITS;
	} else {
		ret = FUNC3(dev, chan, LN2_VOLT, 1, LN2_PWR_UNITS, val);
		if (ret < 0)
			return ret;

		power = FUNC1(*val);
	}

	ret = FUNC3(dev, chan, LN2_CURR, nsamples, LN2_PWR_UNITS, val);
	if (ret < 0)
		return ret;

	power *= FUNC1(*val);
	power = FUNC0(power, LN2_PWR_UNITS);

	if (power > LONG_MAX)
		*val = LONG_MAX;
	else
		*val = power;

	return 0;
}