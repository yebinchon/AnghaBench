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
struct w83627hf_data {scalar_t__ type; int* pwm; int /*<<< orphan*/  update_lock; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;
struct TYPE_2__ {int index; } ;

/* Variables and functions */
 int FUNC0 (unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int) ; 
 struct w83627hf_data* FUNC2 (struct device*) ; 
 int FUNC3 (char const*,int,unsigned long*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC6 (struct device_attribute*) ; 
 int FUNC7 (struct w83627hf_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct w83627hf_data*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ w83627thf ; 

__attribute__((used)) static ssize_t
FUNC9(struct device *dev, struct device_attribute *devattr,
	  const char *buf, size_t count)
{
	int nr = FUNC6(devattr)->index;
	struct w83627hf_data *data = FUNC2(dev);
	unsigned long val;
	int err;

	err = FUNC3(buf, 10, &val);
	if (err)
		return err;

	FUNC4(&data->update_lock);

	if (data->type == w83627thf) {
		/* bits 0-3 are reserved  in 627THF */
		data->pwm[nr] = FUNC0(val) & 0xf0;
		FUNC8(data,
				     FUNC1(data->type, nr),
				     data->pwm[nr] |
				     (FUNC7(data,
				     FUNC1(data->type, nr)) & 0x0f));
	} else {
		data->pwm[nr] = FUNC0(val);
		FUNC8(data,
				     FUNC1(data->type, nr),
				     data->pwm[nr]);
	}

	FUNC5(&data->update_lock);
	return count;
}