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
struct nct7904_data {int tcpu_mask; int temp_mode; int has_dts; int enable_dts; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  BANK_0 ; 
 int /*<<< orphan*/  BANK_1 ; 
 unsigned int DTS_T_CPU1_CH_REG ; 
 unsigned int DTS_T_CPU1_C_REG ; 
 unsigned int DTS_T_CPU1_WH_REG ; 
 unsigned int DTS_T_CPU1_W_REG ; 
 int ENABLE_TSI ; 
 int EOPNOTSUPP ; 
 unsigned int LTD_HV_HL_REG ; 
 unsigned int LTD_HV_LL_REG ; 
 int /*<<< orphan*/  LTD_HV_REG ; 
 unsigned int LTD_LV_HL_REG ; 
 unsigned int LTD_LV_LL_REG ; 
 unsigned int SMI_STS1_REG ; 
 unsigned int SMI_STS3_REG ; 
 int /*<<< orphan*/  SMI_STS7_REG ; 
 int /*<<< orphan*/  SMI_STS8_REG ; 
 unsigned int TEMP_CH1_CH_REG ; 
 unsigned int TEMP_CH1_C_REG ; 
 int /*<<< orphan*/  TEMP_CH1_HV_REG ; 
 unsigned int TEMP_CH1_WH_REG ; 
 unsigned int TEMP_CH1_W_REG ; 
 int /*<<< orphan*/  T_CPU1_HV_REG ; 
 struct nct7904_data* FUNC0 (struct device*) ; 
#define  hwmon_temp_alarm 134 
#define  hwmon_temp_crit 133 
#define  hwmon_temp_crit_hyst 132 
#define  hwmon_temp_input 131 
#define  hwmon_temp_max 130 
#define  hwmon_temp_max_hyst 129 
#define  hwmon_temp_type 128 
 int FUNC1 (struct nct7904_data*,int /*<<< orphan*/ ,unsigned int) ; 
 int FUNC2 (struct nct7904_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (int,int) ; 

__attribute__((used)) static int FUNC4(struct device *dev, u32 attr, int channel,
			     long *val)
{
	struct nct7904_data *data = FUNC0(dev);
	int ret, temp;
	unsigned int reg1, reg2, reg3;

	switch (attr) {
	case hwmon_temp_input:
		if (channel == 4)
			ret = FUNC2(data, BANK_0, LTD_HV_REG);
		else if (channel < 5)
			ret = FUNC2(data, BANK_0,
						 TEMP_CH1_HV_REG + channel * 4);
		else
			ret = FUNC2(data, BANK_0,
						 T_CPU1_HV_REG + (channel - 5)
						 * 2);
		if (ret < 0)
			return ret;
		temp = ((ret & 0xff00) >> 5) | (ret & 0x7);
		*val = FUNC3(temp, 10) * 125;
		return 0;
	case hwmon_temp_alarm:
		if (channel == 4) {
			ret = FUNC1(data, BANK_0,
					       SMI_STS3_REG);
			if (ret < 0)
				return ret;
			*val = (ret >> 1) & 1;
		} else if (channel < 4) {
			ret = FUNC1(data, BANK_0,
					       SMI_STS1_REG);
			if (ret < 0)
				return ret;
			*val = (ret >> (((channel * 2) + 1) & 0x07)) & 1;
		} else {
			if ((channel - 5) < 4) {
				ret = FUNC1(data, BANK_0,
						       SMI_STS7_REG +
						       ((channel - 5) >> 3));
				if (ret < 0)
					return ret;
				*val = (ret >> ((channel - 5) & 0x07)) & 1;
			} else {
				ret = FUNC1(data, BANK_0,
						       SMI_STS8_REG +
						       ((channel - 5) >> 3));
				if (ret < 0)
					return ret;
				*val = (ret >> (((channel - 5) & 0x07) - 4))
							& 1;
			}
		}
		return 0;
	case hwmon_temp_type:
		if (channel < 5) {
			if ((data->tcpu_mask >> channel) & 0x01) {
				if ((data->temp_mode >> channel) & 0x01)
					*val = 3; /* TD */
				else
					*val = 4; /* TR */
			} else {
				*val = 0;
			}
		} else {
			if ((data->has_dts >> (channel - 5)) & 0x01) {
				if (data->enable_dts & ENABLE_TSI)
					*val = 5; /* TSI */
				else
					*val = 6; /* PECI */
			} else {
				*val = 0;
			}
		}
		return 0;
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
		ret = FUNC1(data, BANK_1, reg1);
	else if (channel < 5)
		ret = FUNC1(data, BANK_1,
				       reg2 + channel * 8);
	else
		ret = FUNC1(data, BANK_1,
				       reg3 + (channel - 5) * 4);

	if (ret < 0)
		return ret;
	*val = ret * 1000;
	return 0;
}