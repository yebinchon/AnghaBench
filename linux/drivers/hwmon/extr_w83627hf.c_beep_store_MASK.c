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
struct w83627hf_data {int beep_mask; int /*<<< orphan*/  update_lock; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;
struct TYPE_2__ {int index; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  W83781D_REG_BEEP_INTS1 ; 
 int /*<<< orphan*/  W83781D_REG_BEEP_INTS2 ; 
 int /*<<< orphan*/  W83781D_REG_BEEP_INTS3 ; 
 struct w83627hf_data* FUNC0 (struct device*) ; 
 int FUNC1 (char const*,int,unsigned long*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC4 (struct device_attribute*) ; 
 int FUNC5 (struct w83627hf_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct w83627hf_data*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static ssize_t
FUNC7(struct device *dev, struct device_attribute *attr, const char *buf,
	   size_t count)
{
	struct w83627hf_data *data = FUNC0(dev);
	int bitnr = FUNC4(attr)->index;
	u8 reg;
	unsigned long bit;
	int err;

	err = FUNC1(buf, 10, &bit);
	if (err)
		return err;

	if (bit & ~1)
		return -EINVAL;

	FUNC2(&data->update_lock);
	if (bit)
		data->beep_mask |= (1 << bitnr);
	else
		data->beep_mask &= ~(1 << bitnr);

	if (bitnr < 8) {
		reg = FUNC5(data, W83781D_REG_BEEP_INTS1);
		if (bit)
			reg |= (1 << bitnr);
		else
			reg &= ~(1 << bitnr);
		FUNC6(data, W83781D_REG_BEEP_INTS1, reg);
	} else if (bitnr < 16) {
		reg = FUNC5(data, W83781D_REG_BEEP_INTS2);
		if (bit)
			reg |= (1 << (bitnr - 8));
		else
			reg &= ~(1 << (bitnr - 8));
		FUNC6(data, W83781D_REG_BEEP_INTS2, reg);
	} else {
		reg = FUNC5(data, W83781D_REG_BEEP_INTS3);
		if (bit)
			reg |= (1 << (bitnr - 16));
		else
			reg &= ~(1 << (bitnr - 16));
		FUNC6(data, W83781D_REG_BEEP_INTS3, reg);
	}
	FUNC3(&data->update_lock);

	return count;
}