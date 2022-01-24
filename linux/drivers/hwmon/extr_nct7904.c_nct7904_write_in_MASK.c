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
 int /*<<< orphan*/  BANK_1 ; 
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  VSEN1_HV_HL_REG ; 
 int /*<<< orphan*/  VSEN1_HV_LL_REG ; 
 int /*<<< orphan*/  VSEN1_LV_HL_REG ; 
 int /*<<< orphan*/  VSEN1_LV_LL_REG ; 
 long FUNC0 (long,int /*<<< orphan*/ ,int) ; 
 struct nct7904_data* FUNC1 (struct device*) ; 
#define  hwmon_in_max 129 
#define  hwmon_in_min 128 
 int* nct7904_chan_to_index ; 
 int FUNC2 (struct nct7904_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct nct7904_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC4(struct device *dev, u32 attr, int channel,
			    long val)
{
	struct nct7904_data *data = FUNC1(dev);
	int ret, index, tmp;

	index = nct7904_chan_to_index[channel];

	if (index < 14)
		val = val / 2; /* 0.002V scale */
	else
		val = val / 6; /* 0.006V scale */

	val = FUNC0(val, 0, 0x7ff);

	switch (attr) {
	case hwmon_in_min:
		tmp = FUNC2(data, BANK_1,
				       VSEN1_LV_LL_REG + index * 4);
		if (tmp < 0)
			return tmp;
		tmp &= ~0x7;
		tmp |= val & 0x7;
		ret = FUNC3(data, BANK_1,
					VSEN1_LV_LL_REG + index * 4, tmp);
		if (ret < 0)
			return ret;
		tmp = FUNC2(data, BANK_1,
				       VSEN1_HV_LL_REG + index * 4);
		if (tmp < 0)
			return tmp;
		tmp = (val >> 3) & 0xff;
		ret = FUNC3(data, BANK_1,
					VSEN1_HV_LL_REG + index * 4, tmp);
		return ret;
	case hwmon_in_max:
		tmp = FUNC2(data, BANK_1,
				       VSEN1_LV_HL_REG + index * 4);
		if (tmp < 0)
			return tmp;
		tmp &= ~0x7;
		tmp |= val & 0x7;
		ret = FUNC3(data, BANK_1,
					VSEN1_LV_HL_REG + index * 4, tmp);
		if (ret < 0)
			return ret;
		tmp = FUNC2(data, BANK_1,
				       VSEN1_HV_HL_REG + index * 4);
		if (tmp < 0)
			return tmp;
		tmp = (val >> 3) & 0xff;
		ret = FUNC3(data, BANK_1,
					VSEN1_HV_HL_REG + index * 4, tmp);
		return ret;
	default:
		return -EOPNOTSUPP;
	}
}