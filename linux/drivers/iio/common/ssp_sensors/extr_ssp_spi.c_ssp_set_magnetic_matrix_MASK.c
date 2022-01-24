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
struct ssp_msg {int dummy; } ;
struct ssp_data {TYPE_1__* sensorhub_info; } ;
struct TYPE_2__ {int /*<<< orphan*/  mag_length; int /*<<< orphan*/  mag_table; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  SSP_AP2HUB_WRITE ; 
 int /*<<< orphan*/  SSP_MSG2SSP_AP_SET_MAGNETIC_STATIC_MATRIX ; 
 int /*<<< orphan*/  FUNC0 (struct ssp_msg*) ; 
 struct ssp_msg* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ssp_msg*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct ssp_data*,struct ssp_msg*,int) ; 

int FUNC4(struct ssp_data *data)
{
	int ret;
	struct ssp_msg *msg;

	msg = FUNC1(SSP_MSG2SSP_AP_SET_MAGNETIC_STATIC_MATRIX,
			     data->sensorhub_info->mag_length, SSP_AP2HUB_WRITE,
			     0);
	if (!msg)
		return -ENOMEM;

	FUNC2(msg, 0, data->sensorhub_info->mag_table,
			data->sensorhub_info->mag_length);

	ret = FUNC3(data, msg, 1000);
	FUNC0(msg);

	return ret;
}