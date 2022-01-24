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
struct device {int dummy; } ;

/* Variables and functions */
 int EOPNOTSUPP ; 
 long FUNC0 (unsigned long) ; 
#define  hwmon_power_input 128 
 int /*<<< orphan*/ * ltc4245_curr_regs ; 
 unsigned long FUNC1 (struct device*,int /*<<< orphan*/ ) ; 
 long FUNC2 (struct device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * ltc4245_in_regs ; 
 int /*<<< orphan*/  FUNC3 (struct device*) ; 

__attribute__((used)) static int FUNC4(struct device *dev, u32 attr, int channel,
			      long *val)
{
	unsigned long curr;
	long voltage;

	switch (attr) {
	case hwmon_power_input:
		(void)FUNC3(dev);
		curr = FUNC1(dev, ltc4245_curr_regs[channel]);
		voltage = FUNC2(dev, ltc4245_in_regs[channel]);
		*val = FUNC0(curr * voltage);
		return 0;
	default:
		return -EOPNOTSUPP;
	}
}