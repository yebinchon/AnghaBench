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
struct smsc47m1_data {int* fan_div; int* fan_preload; int /*<<< orphan*/  update_lock; } ;
struct sensor_device_attribute {int index; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 long FUNC1 (int) ; 
 int EINVAL ; 
 int /*<<< orphan*/  SMSC47M1_REG_FANDIV ; 
 int /*<<< orphan*/ * SMSC47M1_REG_FAN_PRELOAD ; 
 int /*<<< orphan*/  SMSC47M2_REG_FANDIV3 ; 
 int FUNC2 (long,int /*<<< orphan*/ ,int) ; 
 struct smsc47m1_data* FUNC3 (struct device*) ; 
 int FUNC4 (char const*,int,long*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (struct smsc47m1_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct smsc47m1_data*,int /*<<< orphan*/ ,long) ; 
 struct sensor_device_attribute* FUNC9 (struct device_attribute*) ; 

__attribute__((used)) static ssize_t FUNC10(struct device *dev,
			     struct device_attribute *devattr,
			     const char *buf, size_t count)
{
	struct sensor_device_attribute *attr = FUNC9(devattr);
	struct smsc47m1_data *data = FUNC3(dev);
	int nr = attr->index;
	long new_div;
	int err;
	long tmp;
	u8 old_div = FUNC1(data->fan_div[nr]);

	err = FUNC4(buf, 10, &new_div);
	if (err)
		return err;

	if (new_div == old_div) /* No change */
		return count;

	FUNC5(&data->update_lock);
	switch (new_div) {
	case 1:
		data->fan_div[nr] = 0;
		break;
	case 2:
		data->fan_div[nr] = 1;
		break;
	case 4:
		data->fan_div[nr] = 2;
		break;
	case 8:
		data->fan_div[nr] = 3;
		break;
	default:
		FUNC6(&data->update_lock);
		return -EINVAL;
	}

	switch (nr) {
	case 0:
	case 1:
		tmp = FUNC7(data, SMSC47M1_REG_FANDIV)
		      & ~(0x03 << (4 + 2 * nr));
		tmp |= data->fan_div[nr] << (4 + 2 * nr);
		FUNC8(data, SMSC47M1_REG_FANDIV, tmp);
		break;
	case 2:
		tmp = FUNC7(data, SMSC47M2_REG_FANDIV3) & 0xCF;
		tmp |= data->fan_div[2] << 4;
		FUNC8(data, SMSC47M2_REG_FANDIV3, tmp);
		break;
	default:
		FUNC0();
	}

	/* Preserve fan min */
	tmp = 192 - (old_div * (192 - data->fan_preload[nr])
		     + new_div / 2) / new_div;
	data->fan_preload[nr] = FUNC2(tmp, 0, 191);
	FUNC8(data, SMSC47M1_REG_FAN_PRELOAD[nr],
			     data->fan_preload[nr]);
	FUNC6(&data->update_lock);

	return count;
}