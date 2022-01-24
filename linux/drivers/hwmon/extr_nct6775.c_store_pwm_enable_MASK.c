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
typedef  int u16 ;
struct sensor_device_attribute {int index; } ;
struct nct6775_data {scalar_t__ kind; unsigned long* pwm_enable; int** pwm; int /*<<< orphan*/  update_lock; int /*<<< orphan*/ * REG_FAN_MODE; int /*<<< orphan*/ ** REG_PWM; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ FUNC0 (struct nct6775_data*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*) ; 
 struct nct6775_data* FUNC2 (struct device*) ; 
 int FUNC3 (char const*,int,unsigned long*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ nct6775 ; 
 int FUNC6 (struct nct6775_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct nct6775_data*,int /*<<< orphan*/ ,int) ; 
 unsigned long off ; 
 int FUNC8 (unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (struct nct6775_data*,int) ; 
 unsigned long sf3 ; 
 unsigned long sf4 ; 
 struct sensor_device_attribute* FUNC10 (struct device_attribute*) ; 

__attribute__((used)) static ssize_t
FUNC11(struct device *dev, struct device_attribute *attr,
		 const char *buf, size_t count)
{
	struct nct6775_data *data = FUNC2(dev);
	struct sensor_device_attribute *sattr = FUNC10(attr);
	int nr = sattr->index;
	unsigned long val;
	int err;
	u16 reg;

	err = FUNC3(buf, 10, &val);
	if (err < 0)
		return err;

	if (val > sf4)
		return -EINVAL;

	if (val == sf3 && data->kind != nct6775)
		return -EINVAL;

	if (val == sf4 && FUNC0(data, nr)) {
		FUNC1(dev, "Inconsistent trip points, not switching to SmartFan IV mode\n");
		FUNC1(dev, "Adjust trip points and try again\n");
		return -EINVAL;
	}

	FUNC4(&data->update_lock);
	data->pwm_enable[nr] = val;
	if (val == off) {
		/*
		 * turn off pwm control: select manual mode, set pwm to maximum
		 */
		data->pwm[0][nr] = 255;
		FUNC7(data, data->REG_PWM[0][nr], 255);
	}
	FUNC9(data, nr);
	reg = FUNC6(data, data->REG_FAN_MODE[nr]);
	reg &= 0x0f;
	reg |= FUNC8(val) << 4;
	FUNC7(data, data->REG_FAN_MODE[nr], reg);
	FUNC5(&data->update_lock);
	return count;
}