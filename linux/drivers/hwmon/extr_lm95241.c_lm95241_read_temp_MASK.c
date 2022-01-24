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
typedef  int u32 ;
struct lm95241_data {int config; int model; int status; int /*<<< orphan*/ * temp; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int EOPNOTSUPP ; 
 int R1DF_MASK ; 
 int R1DM ; 
 int R1MS_MASK ; 
 int R2DF_MASK ; 
 int R2DM ; 
 int R2MS_MASK ; 
#define  hwmon_temp_fault 132 
#define  hwmon_temp_input 131 
#define  hwmon_temp_max 130 
#define  hwmon_temp_min 129 
#define  hwmon_temp_type 128 
 struct lm95241_data* FUNC1 (struct device*) ; 
 long FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 long FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct device *dev, u32 attr, int channel,
			     long *val)
{
	struct lm95241_data *data = FUNC1(dev);

	switch (attr) {
	case hwmon_temp_input:
		if (!channel || (data->config & FUNC0(channel - 1)))
			*val = FUNC2(data->temp[channel * 2],
						data->temp[channel * 2 + 1]);
		else
			*val = FUNC3(data->temp[channel * 2],
						data->temp[channel * 2 + 1]);
		return 0;
	case hwmon_temp_min:
		if (channel == 1)
			*val = (data->config & R1DF_MASK) ? -128000 : 0;
		else
			*val = (data->config & R2DF_MASK) ? -128000 : 0;
		return 0;
	case hwmon_temp_max:
		if (channel == 1)
			*val = (data->config & R1DF_MASK) ? 127875 : 255875;
		else
			*val = (data->config & R2DF_MASK) ? 127875 : 255875;
		return 0;
	case hwmon_temp_type:
		if (channel == 1)
			*val = (data->model & R1MS_MASK) ? 1 : 2;
		else
			*val = (data->model & R2MS_MASK) ? 1 : 2;
		return 0;
	case hwmon_temp_fault:
		if (channel == 1)
			*val = !!(data->status & R1DM);
		else
			*val = !!(data->status & R2DM);
		return 0;
	default:
		return -EOPNOTSUPP;
	}
}