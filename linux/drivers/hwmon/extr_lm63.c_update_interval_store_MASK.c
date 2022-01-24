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
struct lm63_data {int /*<<< orphan*/  update_lock; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned long,int /*<<< orphan*/ ,int) ; 
 struct lm63_data* FUNC1 (struct device*) ; 
 int FUNC2 (char const*,int,unsigned long*) ; 
 int /*<<< orphan*/  FUNC3 (struct lm63_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static ssize_t FUNC6(struct device *dev,
				     struct device_attribute *attr,
				     const char *buf, size_t count)
{
	struct lm63_data *data = FUNC1(dev);
	unsigned long val;
	int err;

	err = FUNC2(buf, 10, &val);
	if (err)
		return err;

	FUNC4(&data->update_lock);
	FUNC3(data, FUNC0(val, 0, 100000));
	FUNC5(&data->update_lock);

	return count;
}