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
struct device {int dummy; } ;
struct atlas_data {int /*<<< orphan*/  regmap; TYPE_1__* client; } ;
typedef  int /*<<< orphan*/  __be16 ;
struct TYPE_2__ {struct device dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATLAS_REG_EC_CALIB_STATUS ; 
 unsigned int ATLAS_REG_EC_CALIB_STATUS_DRY ; 
 unsigned int ATLAS_REG_EC_CALIB_STATUS_HIGH ; 
 unsigned int ATLAS_REG_EC_CALIB_STATUS_LOW ; 
 unsigned int ATLAS_REG_EC_CALIB_STATUS_MASK ; 
 unsigned int ATLAS_REG_EC_CALIB_STATUS_SINGLE ; 
 int /*<<< orphan*/  ATLAS_REG_EC_PROBE ; 
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int*) ; 

__attribute__((used)) static int FUNC5(struct atlas_data *data)
{
	struct device *dev = &data->client->dev;
	int ret;
	unsigned int val;
	__be16	rval;

	ret = FUNC3(data->regmap, ATLAS_REG_EC_PROBE, &rval, 2);
	if (ret)
		return ret;

	val = FUNC0(rval);
	FUNC1(dev, "probe set to K = %d.%.2d", val / 100, val % 100);

	ret = FUNC4(data->regmap, ATLAS_REG_EC_CALIB_STATUS, &val);
	if (ret)
		return ret;

	if (!(val & ATLAS_REG_EC_CALIB_STATUS_MASK)) {
		FUNC2(dev, "device has not been calibrated\n");
		return 0;
	}

	if (!(val & ATLAS_REG_EC_CALIB_STATUS_DRY))
		FUNC2(dev, "device missing dry point calibration\n");

	if (val & ATLAS_REG_EC_CALIB_STATUS_SINGLE) {
		FUNC2(dev, "device using single point calibration\n");
	} else {
		if (!(val & ATLAS_REG_EC_CALIB_STATUS_LOW))
			FUNC2(dev, "device missing low point calibration\n");

		if (!(val & ATLAS_REG_EC_CALIB_STATUS_HIGH))
			FUNC2(dev, "device missing high point calibration\n");
	}

	return 0;
}