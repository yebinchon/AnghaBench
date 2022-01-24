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
 unsigned int DTS_T_CPU1_CH_REG ; 
 unsigned int DTS_T_CPU1_C_REG ; 
 unsigned int DTS_T_CPU1_WH_REG ; 
 unsigned int DTS_T_CPU1_W_REG ; 
 int EOPNOTSUPP ; 
 unsigned int LTD_HV_HL_REG ; 
 unsigned int LTD_HV_LL_REG ; 
 unsigned int LTD_LV_HL_REG ; 
 unsigned int LTD_LV_LL_REG ; 
 unsigned int TEMP_CH1_CH_REG ; 
 unsigned int TEMP_CH1_C_REG ; 
 unsigned int TEMP_CH1_WH_REG ; 
 unsigned int TEMP_CH1_W_REG ; 
 long FUNC0 (long,int,int) ; 
 struct nct7904_data* FUNC1 (struct device*) ; 
#define  hwmon_temp_crit 131 
#define  hwmon_temp_crit_hyst 130 
#define  hwmon_temp_max 129 
#define  hwmon_temp_max_hyst 128 
 int FUNC2 (struct nct7904_data*,int /*<<< orphan*/ ,unsigned int,long) ; 

__attribute__((used)) static int FUNC3(struct device *dev, u32 attr, int channel,
			      long val)
{
	struct nct7904_data *data = FUNC1(dev);
	int ret;
	unsigned int reg1, reg2, reg3;

	val = FUNC0(val / 1000, -128, 127);

	switch (attr) {
	case hwmon_temp_max:
		reg1 = LTD_HV_LL_REG;
		reg2 = TEMP_CH1_W_REG;
		reg3 = DTS_T_CPU1_W_REG;
		break;
	case hwmon_temp_max_hyst:
		reg1 = LTD_LV_LL_REG;
		reg2 = TEMP_CH1_WH_REG;
		reg3 = DTS_T_CPU1_WH_REG;
		break;
	case hwmon_temp_crit:
		reg1 = LTD_HV_HL_REG;
		reg2 = TEMP_CH1_C_REG;
		reg3 = DTS_T_CPU1_C_REG;
		break;
	case hwmon_temp_crit_hyst:
		reg1 = LTD_LV_HL_REG;
		reg2 = TEMP_CH1_CH_REG;
		reg3 = DTS_T_CPU1_CH_REG;
		break;
	default:
		return -EOPNOTSUPP;
	}
	if (channel == 4)
		ret = FUNC2(data, BANK_1, reg1, val);
	else if (channel < 5)
		ret = FUNC2(data, BANK_1,
					reg2 + channel * 8, val);
	else
		ret = FUNC2(data, BANK_1,
					reg3 + (channel - 5) * 4, val);

	return ret;
}