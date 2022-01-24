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
struct ssp_data {int available_sensors; TYPE_1__* spi; int /*<<< orphan*/  mcu_dump_mode; int /*<<< orphan*/ * delay_buf; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int /*<<< orphan*/  SSP_MSG2SSP_AP_MCU_SET_DUMPMODE ; 
 int SSP_SENSOR_MAX ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,...) ; 
 int FUNC2 (struct ssp_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct ssp_data*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct ssp_data *data)
{
	int i, ret;

	for (i = 0; i < SSP_SENSOR_MAX; ++i) {
		if (data->available_sensors & FUNC0(i)) {
			ret = FUNC3(data, i, data->delay_buf[i]);
			if (ret < 0) {
				FUNC1(&data->spi->dev,
					"Sync sensor nr: %d fail\n", i);
				continue;
			}
		}
	}

	ret = FUNC2(data, SSP_MSG2SSP_AP_MCU_SET_DUMPMODE,
			  data->mcu_dump_mode);
	if (ret < 0)
		FUNC1(&data->spi->dev,
			"SSP_MSG2SSP_AP_MCU_SET_DUMPMODE failed\n");
}