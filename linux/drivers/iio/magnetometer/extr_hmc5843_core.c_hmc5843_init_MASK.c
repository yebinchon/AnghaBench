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
typedef  char u8 ;
struct hmc5843_data {int /*<<< orphan*/  dev; int /*<<< orphan*/  regmap; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int ENODEV ; 
 int /*<<< orphan*/  HMC5843_ID_REG ; 
 int /*<<< orphan*/  HMC5843_MEAS_CONF_NORMAL ; 
 int /*<<< orphan*/  HMC5843_MODE_CONVERSION_CONTINUOUS ; 
 int /*<<< orphan*/  HMC5843_RANGE_GAIN_DEFAULT ; 
 int /*<<< orphan*/  HMC5843_RATE_DEFAULT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int FUNC2 (struct hmc5843_data*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct hmc5843_data*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct hmc5843_data*,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct hmc5843_data*,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct hmc5843_data *data)
{
	int ret;
	u8 id[3];

	ret = FUNC6(data->regmap, HMC5843_ID_REG,
			       id, FUNC0(id));
	if (ret < 0)
		return ret;
	if (id[0] != 'H' || id[1] != '4' || id[2] != '3') {
		FUNC1(data->dev, "no HMC5843/5883/5883L/5983 sensor\n");
		return -ENODEV;
	}

	ret = FUNC2(data, HMC5843_MEAS_CONF_NORMAL);
	if (ret < 0)
		return ret;
	ret = FUNC5(data, HMC5843_RATE_DEFAULT);
	if (ret < 0)
		return ret;
	ret = FUNC4(data, HMC5843_RANGE_GAIN_DEFAULT);
	if (ret < 0)
		return ret;
	return FUNC3(data, HMC5843_MODE_CONVERSION_CONTINUOUS);
}