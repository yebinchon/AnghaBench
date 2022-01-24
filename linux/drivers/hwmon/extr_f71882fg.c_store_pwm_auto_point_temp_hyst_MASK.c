#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
struct f71882fg_data {int** pwm_auto_point_temp; int* pwm_auto_point_hyst; int /*<<< orphan*/  update_lock; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;
struct TYPE_2__ {int index; int nr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 long FUNC2 (long,int,int) ; 
 struct f71882fg_data* FUNC3 (struct device*) ; 
 void* FUNC4 (struct f71882fg_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct f71882fg_data*,int /*<<< orphan*/ ,int) ; 
 int FUNC6 (char const*,int,long*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC9 (struct device_attribute*) ; 

__attribute__((used)) static ssize_t FUNC10(struct device *dev,
					      struct device_attribute *devattr,
					      const char *buf, size_t count)
{
	struct f71882fg_data *data = FUNC3(dev);
	int err, nr = FUNC9(devattr)->index;
	int point = FUNC9(devattr)->nr;
	u8 reg;
	long val;

	err = FUNC6(buf, 10, &val);
	if (err)
		return err;

	val /= 1000;

	FUNC7(&data->update_lock);
	data->pwm_auto_point_temp[nr][point] =
		FUNC4(data, FUNC1(nr, point));
	val = FUNC2(val, data->pwm_auto_point_temp[nr][point] - 15,
			data->pwm_auto_point_temp[nr][point]);
	val = data->pwm_auto_point_temp[nr][point] - val;

	reg = FUNC4(data, FUNC0(nr / 2));
	if (nr & 1)
		reg = (reg & 0x0f) | (val << 4);
	else
		reg = (reg & 0xf0) | val;

	FUNC5(data, FUNC0(nr / 2), reg);
	data->pwm_auto_point_hyst[nr / 2] = reg;
	FUNC8(&data->update_lock);

	return count;
}