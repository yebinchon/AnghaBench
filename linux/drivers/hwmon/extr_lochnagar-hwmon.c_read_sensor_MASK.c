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
typedef  int /*<<< orphan*/  u32 ;
struct regmap {int dummy; } ;
struct lochnagar_hwmon {int /*<<< orphan*/  sensor_lock; struct regmap* regmap; } ;
struct device {int dummy; } ;
typedef  enum lochnagar_measure_mode { ____Placeholder_lochnagar_measure_mode } lochnagar_measure_mode ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct device*,char*,int) ; 
 struct lochnagar_hwmon* FUNC1 (struct device*) ; 
 int FUNC2 (struct regmap*,int,int,int) ; 
 long FUNC3 (int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (struct regmap*,int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(struct device *dev, int chan,
		       enum lochnagar_measure_mode mode, int nsamples,
		       unsigned int precision, long *val)
{
	struct lochnagar_hwmon *priv = FUNC1(dev);
	struct regmap *regmap = priv->regmap;
	u32 data;
	int ret;

	FUNC4(&priv->sensor_lock);

	ret = FUNC2(regmap, chan, mode, nsamples);
	if (ret < 0) {
		FUNC0(dev, "Failed to perform measurement: %d\n", ret);
		goto error;
	}

	ret = FUNC6(regmap, chan, &data);
	if (ret < 0) {
		FUNC0(dev, "Failed to read measurement: %d\n", ret);
		goto error;
	}

	*val = FUNC3(data, precision);

error:
	FUNC5(&priv->sensor_lock);

	return ret;
}