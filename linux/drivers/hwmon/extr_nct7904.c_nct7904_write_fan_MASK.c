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
typedef  long u8 ;
typedef  int u32 ;
struct nct7904_data {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  BANK_1 ; 
 int /*<<< orphan*/  FUNC0 (int,long) ; 
 int EINVAL ; 
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  FANIN1_HV_HL_REG ; 
 int /*<<< orphan*/  FANIN1_LV_HL_REG ; 
 long FUNC1 (int /*<<< orphan*/ ,int,int) ; 
 struct nct7904_data* FUNC2 (struct device*) ; 
#define  hwmon_fan_min 128 
 int FUNC3 (struct nct7904_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,long) ; 

__attribute__((used)) static int FUNC4(struct device *dev, u32 attr, int channel,
			     long val)
{
	struct nct7904_data *data = FUNC2(dev);
	int ret;
	u8 tmp;

	switch (attr) {
	case hwmon_fan_min:
		if (val <= 0)
			return -EINVAL;

		val = FUNC1(FUNC0(1350000, val), 1, 0x1fff);
		tmp = (val >> 5) & 0xff;
		ret = FUNC3(data, BANK_1,
					FANIN1_HV_HL_REG + channel * 2, tmp);
		if (ret < 0)
			return ret;
		tmp = val & 0x1f;
		ret = FUNC3(data, BANK_1,
					FANIN1_LV_HL_REG + channel * 2, tmp);
		return ret;
	default:
		return -EOPNOTSUPP;
	}
}