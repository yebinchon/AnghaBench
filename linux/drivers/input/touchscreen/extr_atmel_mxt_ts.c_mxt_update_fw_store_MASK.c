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
struct mxt_data {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  MXT_FW_NAME ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*,int) ; 
 struct mxt_data* FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*) ; 
 int FUNC3 (struct mxt_data*) ; 
 int FUNC4 (struct device*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static ssize_t FUNC5(struct device *dev,
					struct device_attribute *attr,
					const char *buf, size_t count)
{
	struct mxt_data *data = FUNC1(dev);
	int error;

	error = FUNC4(dev, MXT_FW_NAME);
	if (error) {
		FUNC0(dev, "The firmware update failed(%d)\n", error);
		count = error;
	} else {
		FUNC2(dev, "The firmware update succeeded\n");

		error = FUNC3(data);
		if (error)
			return error;
	}

	return count;
}