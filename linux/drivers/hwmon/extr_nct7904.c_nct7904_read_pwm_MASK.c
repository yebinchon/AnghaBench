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
struct nct7904_data {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  BANK_3 ; 
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  FANCTL1_FMR_REG ; 
 int /*<<< orphan*/  FANCTL1_OUT_REG ; 
 struct nct7904_data* FUNC0 (struct device*) ; 
#define  hwmon_pwm_enable 129 
#define  hwmon_pwm_input 128 
 int FUNC1 (struct nct7904_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct device *dev, u32 attr, int channel,
			    long *val)
{
	struct nct7904_data *data = FUNC0(dev);
	int ret;

	switch (attr) {
	case hwmon_pwm_input:
		ret = FUNC1(data, BANK_3, FANCTL1_OUT_REG + channel);
		if (ret < 0)
			return ret;
		*val = ret;
		return 0;
	case hwmon_pwm_enable:
		ret = FUNC1(data, BANK_3, FANCTL1_FMR_REG + channel);
		if (ret < 0)
			return ret;

		*val = ret ? 2 : 1;
		return 0;
	default:
		return -EOPNOTSUPP;
	}
}