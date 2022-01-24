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
struct w83627hf_data {int vrm_ovt; scalar_t__ type; int /*<<< orphan*/  update_lock; int /*<<< orphan*/ * in_min; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long,int /*<<< orphan*/ ,int) ; 
 struct w83627hf_data* FUNC3 (struct device*) ; 
 int FUNC4 (char const*,int,unsigned long*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct w83627hf_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ w83627thf ; 
 scalar_t__ w83637hf ; 
 scalar_t__ w83687thf ; 

__attribute__((used)) static ssize_t FUNC8(struct device *dev,
			     struct device_attribute *attr, const char *buf,
			     size_t count)
{
	struct w83627hf_data *data = FUNC3(dev);
	unsigned long val;
	int err;

	err = FUNC4(buf, 10, &val);
	if (err)
		return err;

	FUNC5(&data->update_lock);
	
	if ((data->vrm_ovt & 0x01) &&
		(w83627thf == data->type || w83637hf == data->type
		 || w83687thf == data->type))

		/* use VRM9 calculation */
		data->in_min[0] =
			FUNC2(((val * 100) - 70000 + 244) / 488, 0, 255);
	else
		/* use VRM8 (standard) calculation */
		data->in_min[0] = FUNC0(val);

	FUNC7(data, FUNC1(0), data->in_min[0]);
	FUNC6(&data->update_lock);
	return count;
}