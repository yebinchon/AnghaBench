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
struct ltc4245_data {int* cregs; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int EOPNOTSUPP ; 
 size_t LTC4245_FAULT1 ; 
#define  hwmon_curr_input 129 
#define  hwmon_curr_max_alarm 128 
 int /*<<< orphan*/ * ltc4245_curr_regs ; 
 long FUNC1 (struct device*,int /*<<< orphan*/ ) ; 
 struct ltc4245_data* FUNC2 (struct device*) ; 

__attribute__((used)) static int FUNC3(struct device *dev, u32 attr, int channel,
			     long *val)
{
	struct ltc4245_data *data = FUNC2(dev);

	switch (attr) {
	case hwmon_curr_input:
		*val = FUNC1(dev, ltc4245_curr_regs[channel]);
		return 0;
	case hwmon_curr_max_alarm:
		*val = !!(data->cregs[LTC4245_FAULT1] & FUNC0(channel + 4));
		return 0;
	default:
		return -EOPNOTSUPP;
	}
}