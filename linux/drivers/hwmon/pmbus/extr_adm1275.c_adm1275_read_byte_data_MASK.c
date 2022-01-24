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
struct pmbus_driver_info {int dummy; } ;
struct i2c_client {int dummy; } ;
struct adm1275_data {int /*<<< orphan*/  have_mfr_vaux_status; int /*<<< orphan*/  have_vaux_status; int /*<<< orphan*/  have_vout; int /*<<< orphan*/  have_oc_fault; int /*<<< orphan*/  have_uc_fault; } ;

/* Variables and functions */
 int ADM1075_VAUX_OV_WARN ; 
 int const ADM1075_VAUX_STATUS ; 
 int ADM1075_VAUX_UV_WARN ; 
 int ADM1275_MFR_STATUS_IOUT_WARN2 ; 
 int ADM1293_MFR_STATUS_VAUX_OV_WARN ; 
 int ADM1293_MFR_STATUS_VAUX_UV_WARN ; 
 int ENODATA ; 
 int ENXIO ; 
 int PB_IOUT_OC_FAULT ; 
 int PB_IOUT_UC_FAULT ; 
 int PB_VOLTAGE_OV_WARNING ; 
 int PB_VOLTAGE_UV_WARNING ; 
#define  PMBUS_STATUS_IOUT 129 
 int const PMBUS_STATUS_MFR_SPECIFIC ; 
#define  PMBUS_STATUS_VOUT 128 
 struct pmbus_driver_info* FUNC0 (struct i2c_client*) ; 
 int FUNC1 (struct i2c_client*,int,int const) ; 
 struct adm1275_data* FUNC2 (struct pmbus_driver_info const*) ; 

__attribute__((used)) static int FUNC3(struct i2c_client *client, int page, int reg)
{
	const struct pmbus_driver_info *info = FUNC0(client);
	const struct adm1275_data *data = FUNC2(info);
	int mfr_status, ret;

	if (page > 0)
		return -ENXIO;

	switch (reg) {
	case PMBUS_STATUS_IOUT:
		ret = FUNC1(client, page, PMBUS_STATUS_IOUT);
		if (ret < 0)
			break;
		if (!data->have_oc_fault && !data->have_uc_fault)
			break;
		mfr_status = FUNC1(client, page,
						  PMBUS_STATUS_MFR_SPECIFIC);
		if (mfr_status < 0)
			return mfr_status;
		if (mfr_status & ADM1275_MFR_STATUS_IOUT_WARN2) {
			ret |= data->have_oc_fault ?
			  PB_IOUT_OC_FAULT : PB_IOUT_UC_FAULT;
		}
		break;
	case PMBUS_STATUS_VOUT:
		if (data->have_vout)
			return -ENODATA;
		ret = 0;
		if (data->have_vaux_status) {
			mfr_status = FUNC1(client, 0,
							  ADM1075_VAUX_STATUS);
			if (mfr_status < 0)
				return mfr_status;
			if (mfr_status & ADM1075_VAUX_OV_WARN)
				ret |= PB_VOLTAGE_OV_WARNING;
			if (mfr_status & ADM1075_VAUX_UV_WARN)
				ret |= PB_VOLTAGE_UV_WARNING;
		} else if (data->have_mfr_vaux_status) {
			mfr_status = FUNC1(client, page,
						PMBUS_STATUS_MFR_SPECIFIC);
			if (mfr_status < 0)
				return mfr_status;
			if (mfr_status & ADM1293_MFR_STATUS_VAUX_OV_WARN)
				ret |= PB_VOLTAGE_OV_WARNING;
			if (mfr_status & ADM1293_MFR_STATUS_VAUX_UV_WARN)
				ret |= PB_VOLTAGE_UV_WARNING;
		}
		break;
	default:
		ret = -ENODATA;
		break;
	}
	return ret;
}