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
struct ms_tp_dev {TYPE_1__* client; int /*<<< orphan*/ * prom; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ENODEV ; 
 scalar_t__ MS_SENSORS_TP_PROM_READ ; 
 int MS_SENSORS_TP_PROM_WORDS_NB ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int FUNC1 (TYPE_1__*,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 

int FUNC3(struct ms_tp_dev *dev_data)
{
	int i, ret;

	for (i = 0; i < MS_SENSORS_TP_PROM_WORDS_NB; i++) {
		ret = FUNC1(
			dev_data->client,
			MS_SENSORS_TP_PROM_READ + (i << 1),
			&dev_data->prom[i]);

		if (ret)
			return ret;
	}

	if (!FUNC2(dev_data->prom,
				     MS_SENSORS_TP_PROM_WORDS_NB + 1)) {
		FUNC0(&dev_data->client->dev,
			"Calibration coefficients crc check error\n");
		return -ENODEV;
	}

	return 0;
}