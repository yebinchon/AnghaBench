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
struct sensor_device_attribute_2 {int nr; size_t index; } ;
struct i2c_client {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct adt7475_data {int config5; long** temp; int /*<<< orphan*/  lock; struct i2c_client* client; } ;
typedef  size_t ssize_t ;

/* Variables and functions */
#define  AUTOMIN 133 
 int CONFIG5_TEMPOFFSET ; 
 size_t EINVAL ; 
#define  HYSTERSIS 132 
#define  MAX 131 
#define  MIN 130 
#define  OFFSET 129 
 unsigned char REG_CONFIG5 ; 
 unsigned char REG_REMOTE1_HYSTERSIS ; 
 unsigned char REG_REMOTE2_HYSTERSIS ; 
 unsigned char FUNC0 (size_t) ; 
 unsigned char FUNC1 (size_t) ; 
 unsigned char FUNC2 (size_t) ; 
 unsigned char FUNC3 (size_t) ; 
 unsigned char FUNC4 (size_t) ; 
#define  THERM 128 
 int FUNC5 (unsigned char) ; 
 int /*<<< orphan*/  FUNC6 (struct i2c_client*) ; 
 long FUNC7 (long,int,int) ; 
 struct adt7475_data* FUNC8 (struct device*) ; 
 int /*<<< orphan*/  FUNC9 (struct i2c_client*,unsigned char,long) ; 
 scalar_t__ FUNC10 (char const*,int,long*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int FUNC13 (struct adt7475_data*,int) ; 
 long FUNC14 (struct adt7475_data*,long) ; 
 struct sensor_device_attribute_2* FUNC15 (struct device_attribute*) ; 

__attribute__((used)) static ssize_t FUNC16(struct device *dev, struct device_attribute *attr,
			  const char *buf, size_t count)
{
	struct sensor_device_attribute_2 *sattr = FUNC15(attr);
	struct adt7475_data *data = FUNC8(dev);
	struct i2c_client *client = data->client;
	unsigned char reg = 0;
	u8 out;
	int temp;
	long val;

	if (FUNC10(buf, 10, &val))
		return -EINVAL;

	FUNC11(&data->lock);

	/* We need the config register in all cases for temp <-> reg conv. */
	data->config5 = FUNC5(REG_CONFIG5);

	switch (sattr->nr) {
	case OFFSET:
		if (data->config5 & CONFIG5_TEMPOFFSET) {
			val = FUNC7(val, -63000, 127000);
			out = data->temp[OFFSET][sattr->index] = val / 1000;
		} else {
			val = FUNC7(val, -63000, 64000);
			out = data->temp[OFFSET][sattr->index] = val / 500;
		}
		break;

	case HYSTERSIS:
		/*
		 * The value will be given as an absolute value, turn it
		 * into an offset based on THERM
		 */

		/* Read fresh THERM and HYSTERSIS values from the chip */
		data->temp[THERM][sattr->index] =
			FUNC5(FUNC3(sattr->index)) << 2;
		FUNC6(client);

		temp = FUNC13(data, data->temp[THERM][sattr->index]);
		val = FUNC7(val, temp - 15000, temp);
		val = (temp - val) / 1000;

		if (sattr->index != 1) {
			data->temp[HYSTERSIS][sattr->index] &= 0xF0;
			data->temp[HYSTERSIS][sattr->index] |= (val & 0xF) << 4;
		} else {
			data->temp[HYSTERSIS][sattr->index] &= 0x0F;
			data->temp[HYSTERSIS][sattr->index] |= (val & 0xF);
		}

		out = data->temp[HYSTERSIS][sattr->index];
		break;

	default:
		data->temp[sattr->nr][sattr->index] = FUNC14(data, val);

		/*
		 * We maintain an extra 2 digits of precision for simplicity
		 * - shift those back off before writing the value
		 */
		out = (u8) (data->temp[sattr->nr][sattr->index] >> 2);
	}

	switch (sattr->nr) {
	case MIN:
		reg = FUNC1(sattr->index);
		break;
	case MAX:
		reg = FUNC0(sattr->index);
		break;
	case OFFSET:
		reg = FUNC2(sattr->index);
		break;
	case AUTOMIN:
		reg = FUNC4(sattr->index);
		break;
	case THERM:
		reg = FUNC3(sattr->index);
		break;
	case HYSTERSIS:
		if (sattr->index != 2)
			reg = REG_REMOTE1_HYSTERSIS;
		else
			reg = REG_REMOTE2_HYSTERSIS;

		break;
	}

	FUNC9(client, reg, out);

	FUNC12(&data->lock);
	return count;
}