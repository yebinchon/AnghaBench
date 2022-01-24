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
struct f71882fg_data {scalar_t__ type; int in_beep; int /*<<< orphan*/  update_lock; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;
struct TYPE_2__ {int index; } ;

/* Variables and functions */
 int /*<<< orphan*/  F71882FG_REG_IN_BEEP ; 
 int /*<<< orphan*/  F81866_REG_IN_BEEP ; 
 struct f71882fg_data* FUNC0 (struct device*) ; 
 void* FUNC1 (struct f71882fg_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct f71882fg_data*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ f81866a ; 
 int FUNC3 (char const*,int,unsigned long*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC6 (struct device_attribute*) ; 

__attribute__((used)) static ssize_t FUNC7(struct device *dev, struct device_attribute
	*devattr, const char *buf, size_t count)
{
	struct f71882fg_data *data = FUNC0(dev);
	int err, nr = FUNC6(devattr)->index;
	unsigned long val;

	err = FUNC3(buf, 10, &val);
	if (err)
		return err;

	FUNC4(&data->update_lock);
	if (data->type == f81866a)
		data->in_beep = FUNC1(data, F81866_REG_IN_BEEP);
	else
		data->in_beep = FUNC1(data, F71882FG_REG_IN_BEEP);

	if (val)
		data->in_beep |= 1 << nr;
	else
		data->in_beep &= ~(1 << nr);

	if (data->type == f81866a)
		FUNC2(data, F81866_REG_IN_BEEP, data->in_beep);
	else
		FUNC2(data, F71882FG_REG_IN_BEEP, data->in_beep);
	FUNC5(&data->update_lock);

	return count;
}