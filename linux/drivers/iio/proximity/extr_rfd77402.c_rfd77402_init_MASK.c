#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct rfd77402_data {int /*<<< orphan*/  client; } ;
struct TYPE_3__ {int val; int /*<<< orphan*/  reg; } ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  RFD77402_CMD_MCPU_OFF ; 
 int /*<<< orphan*/  RFD77402_CMD_MCPU_ON ; 
 int /*<<< orphan*/  RFD77402_CMD_STANDBY ; 
 int RFD77402_I2C_ADDR_INCR ; 
 int RFD77402_I2C_DATA_INCR ; 
 int RFD77402_I2C_HOST_DEBUG ; 
 int /*<<< orphan*/  RFD77402_I2C_INIT_CFG ; 
 int RFD77402_I2C_MCPU_DEBUG ; 
 int /*<<< orphan*/  RFD77402_ICSR ; 
 int /*<<< orphan*/  RFD77402_ICSR_INT_MODE ; 
 int /*<<< orphan*/  RFD77402_PMU_CFG ; 
 int /*<<< orphan*/  RFD77402_STATUS_MCPU_OFF ; 
 int /*<<< orphan*/  RFD77402_STATUS_MCPU_ON ; 
 int /*<<< orphan*/  RFD77402_STATUS_STANDBY ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 TYPE_1__* rf77402_tof_config ; 
 int FUNC3 (struct rfd77402_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct rfd77402_data *data)
{
	int ret, i;

	ret = FUNC3(data, RFD77402_CMD_STANDBY,
				 RFD77402_STATUS_STANDBY);
	if (ret < 0)
		return ret;

	/* configure INT pad as push-pull, active low */
	ret = FUNC1(data->client, RFD77402_ICSR,
					RFD77402_ICSR_INT_MODE);
	if (ret < 0)
		return ret;

	/* I2C configuration */
	ret = FUNC2(data->client, RFD77402_I2C_INIT_CFG,
					RFD77402_I2C_ADDR_INCR |
					RFD77402_I2C_DATA_INCR |
					RFD77402_I2C_HOST_DEBUG	|
					RFD77402_I2C_MCPU_DEBUG);
	if (ret < 0)
		return ret;

	/* set initialization */
	ret = FUNC2(data->client, RFD77402_PMU_CFG, 0x0500);
	if (ret < 0)
		return ret;

	ret = FUNC3(data, RFD77402_CMD_MCPU_OFF,
				 RFD77402_STATUS_MCPU_OFF);
	if (ret < 0)
		return ret;

	/* set initialization */
	ret = FUNC2(data->client, RFD77402_PMU_CFG, 0x0600);
	if (ret < 0)
		return ret;

	ret = FUNC3(data, RFD77402_CMD_MCPU_ON,
				 RFD77402_STATUS_MCPU_ON);
	if (ret < 0)
		return ret;

	for (i = 0; i < FUNC0(rf77402_tof_config); i++) {
		ret = FUNC2(data->client,
						rf77402_tof_config[i].reg,
						rf77402_tof_config[i].val);
		if (ret < 0)
			return ret;
	}

	ret = FUNC3(data, RFD77402_CMD_STANDBY,
				 RFD77402_STATUS_STANDBY);

	return ret;
}