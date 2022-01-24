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
struct lm25066_data {int /*<<< orphan*/  id; } ;
struct i2c_client {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int,int) ; 
 int ENODATA ; 
 int /*<<< orphan*/  LM25066_MFR_IIN_OC_WARN_LIMIT ; 
 int /*<<< orphan*/  LM25066_MFR_PIN_OP_WARN_LIMIT ; 
 int /*<<< orphan*/  LM25066_MFR_READ_IIN ; 
 int /*<<< orphan*/  LM25066_MFR_READ_PIN ; 
 int /*<<< orphan*/  LM25066_READ_AVG_IIN ; 
 int /*<<< orphan*/  LM25066_READ_AVG_PIN ; 
 int /*<<< orphan*/  LM25066_READ_AVG_VIN ; 
 int /*<<< orphan*/  LM25066_READ_AVG_VOUT ; 
 int /*<<< orphan*/  LM25066_READ_PIN_PEAK ; 
 int /*<<< orphan*/  LM25066_READ_VAUX ; 
 int /*<<< orphan*/  LM25066_SAMPLES_FOR_AVG ; 
#define  PMBUS_IIN_OC_WARN_LIMIT 144 
#define  PMBUS_PIN_OP_WARN_LIMIT 143 
#define  PMBUS_READ_IIN 142 
#define  PMBUS_READ_PIN 141 
#define  PMBUS_VIRT_READ_IIN_AVG 140 
#define  PMBUS_VIRT_READ_PIN_AVG 139 
#define  PMBUS_VIRT_READ_PIN_MAX 138 
#define  PMBUS_VIRT_READ_VIN_AVG 137 
#define  PMBUS_VIRT_READ_VMON 136 
#define  PMBUS_VIRT_READ_VOUT_AVG 135 
#define  PMBUS_VIRT_RESET_PIN_HISTORY 134 
#define  PMBUS_VIRT_SAMPLES 133 
#define  lm25056 132 
#define  lm25066 131 
#define  lm5064 130 
#define  lm5066 129 
#define  lm5066i 128 
 struct pmbus_driver_info* FUNC1 (struct i2c_client*) ; 
 int FUNC2 (struct i2c_client*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct i2c_client*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct lm25066_data* FUNC4 (struct pmbus_driver_info const*) ; 

__attribute__((used)) static int FUNC5(struct i2c_client *client, int page, int reg)
{
	const struct pmbus_driver_info *info = FUNC1(client);
	const struct lm25066_data *data = FUNC4(info);
	int ret;

	switch (reg) {
	case PMBUS_VIRT_READ_VMON:
		ret = FUNC3(client, 0, LM25066_READ_VAUX);
		if (ret < 0)
			break;
		/* Adjust returned value to match VIN coefficients */
		switch (data->id) {
		case lm25056:
			/* VIN: 6.14 mV VAUX: 293 uV LSB */
			ret = FUNC0(ret * 293, 6140);
			break;
		case lm25066:
			/* VIN: 4.54 mV VAUX: 283.2 uV LSB */
			ret = FUNC0(ret * 2832, 45400);
			break;
		case lm5064:
			/* VIN: 4.53 mV VAUX: 700 uV LSB */
			ret = FUNC0(ret * 70, 453);
			break;
		case lm5066:
		case lm5066i:
			/* VIN: 2.18 mV VAUX: 725 uV LSB */
			ret = FUNC0(ret * 725, 2180);
			break;
		}
		break;
	case PMBUS_READ_IIN:
		ret = FUNC3(client, 0, LM25066_MFR_READ_IIN);
		break;
	case PMBUS_READ_PIN:
		ret = FUNC3(client, 0, LM25066_MFR_READ_PIN);
		break;
	case PMBUS_IIN_OC_WARN_LIMIT:
		ret = FUNC3(client, 0,
					   LM25066_MFR_IIN_OC_WARN_LIMIT);
		break;
	case PMBUS_PIN_OP_WARN_LIMIT:
		ret = FUNC3(client, 0,
					   LM25066_MFR_PIN_OP_WARN_LIMIT);
		break;
	case PMBUS_VIRT_READ_VIN_AVG:
		ret = FUNC3(client, 0, LM25066_READ_AVG_VIN);
		break;
	case PMBUS_VIRT_READ_VOUT_AVG:
		ret = FUNC3(client, 0, LM25066_READ_AVG_VOUT);
		break;
	case PMBUS_VIRT_READ_IIN_AVG:
		ret = FUNC3(client, 0, LM25066_READ_AVG_IIN);
		break;
	case PMBUS_VIRT_READ_PIN_AVG:
		ret = FUNC3(client, 0, LM25066_READ_AVG_PIN);
		break;
	case PMBUS_VIRT_READ_PIN_MAX:
		ret = FUNC3(client, 0, LM25066_READ_PIN_PEAK);
		break;
	case PMBUS_VIRT_RESET_PIN_HISTORY:
		ret = 0;
		break;
	case PMBUS_VIRT_SAMPLES:
		ret = FUNC2(client, 0, LM25066_SAMPLES_FOR_AVG);
		if (ret < 0)
			break;
		ret = 1 << ret;
		break;
	default:
		ret = -ENODATA;
		break;
	}
	return ret;
}