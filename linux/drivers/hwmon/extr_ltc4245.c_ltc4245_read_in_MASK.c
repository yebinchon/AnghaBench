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
struct ltc4245_data {int* gpios; int* cregs; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int EOPNOTSUPP ; 
 size_t LTC4245_FAULT1 ; 
 size_t LTC4245_FAULT2 ; 
#define  hwmon_in_input 129 
#define  hwmon_in_min_alarm 128 
 long FUNC1 (struct device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * ltc4245_in_regs ; 
 struct ltc4245_data* FUNC2 (struct device*) ; 

__attribute__((used)) static int FUNC3(struct device *dev, u32 attr, int channel, long *val)
{
	struct ltc4245_data *data = FUNC2(dev);

	switch (attr) {
	case hwmon_in_input:
		if (channel < 8) {
			*val = FUNC1(dev,
						ltc4245_in_regs[channel]);
		} else {
			int regval = data->gpios[channel - 8];

			if (regval < 0)
				return regval;
			*val = regval * 10;
		}
		return 0;
	case hwmon_in_min_alarm:
		if (channel < 4)
			*val = !!(data->cregs[LTC4245_FAULT1] & FUNC0(channel));
		else
			*val = !!(data->cregs[LTC4245_FAULT2] &
				  FUNC0(channel - 4));
		return 0;
	default:
		return -EOPNOTSUPP;
	}
}