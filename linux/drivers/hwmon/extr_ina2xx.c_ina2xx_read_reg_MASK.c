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
struct ina2xx_data {int /*<<< orphan*/  regmap; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int ENODEV ; 
 int INA2XX_CALIBRATION ; 
 int /*<<< orphan*/  INA2XX_MAX_DELAY ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*,int,...) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*) ; 
 struct ina2xx_data* FUNC2 (struct device*) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*) ; 
 int FUNC4 (struct ina2xx_data*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ,int,unsigned int*) ; 

__attribute__((used)) static int FUNC7(struct device *dev, int reg, unsigned int *regval)
{
	struct ina2xx_data *data = FUNC2(dev);
	int ret, retry;

	FUNC0(dev, "Starting register %d read\n", reg);

	for (retry = 5; retry; retry--) {

		ret = FUNC6(data->regmap, reg, regval);
		if (ret < 0)
			return ret;

		FUNC0(dev, "read %d, val = 0x%04x\n", reg, *regval);

		/*
		 * If the current value in the calibration register is 0, the
		 * power and current registers will also remain at 0. In case
		 * the chip has been reset let's check the calibration
		 * register and reinitialize if needed.
		 * We do that extra read of the calibration register if there
		 * is some hint of a chip reset.
		 */
		if (*regval == 0) {
			unsigned int cal;

			ret = FUNC6(data->regmap, INA2XX_CALIBRATION,
					  &cal);
			if (ret < 0)
				return ret;

			if (cal == 0) {
				FUNC3(dev, "chip not calibrated, reinitializing\n");

				ret = FUNC4(data);
				if (ret < 0)
					return ret;
				/*
				 * Let's make sure the power and current
				 * registers have been updated before trying
				 * again.
				 */
				FUNC5(INA2XX_MAX_DELAY);
				continue;
			}
		}
		return 0;
	}

	/*
	 * If we're here then although all write operations succeeded, the
	 * chip still returns 0 in the calibration register. Nothing more we
	 * can do here.
	 */
	FUNC1(dev, "unable to reinitialize the chip\n");
	return -ENODEV;
}