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
typedef  int u16 ;
struct w83627ehf_data {int /*<<< orphan*/  update_lock; scalar_t__ valid; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  size_t ssize_t ;
struct TYPE_2__ {int nr; } ;

/* Variables and functions */
 size_t EINVAL ; 
 int /*<<< orphan*/  W83627EHF_REG_CASEOPEN_CLR ; 
 struct w83627ehf_data* FUNC0 (struct device*) ; 
 scalar_t__ FUNC1 (char const*,int,unsigned long*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC4 (struct device_attribute*) ; 
 int FUNC5 (struct w83627ehf_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct w83627ehf_data*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static ssize_t
FUNC7(struct device *dev, struct device_attribute *attr,
			const char *buf, size_t count)
{
	struct w83627ehf_data *data = FUNC0(dev);
	unsigned long val;
	u16 reg, mask;

	if (FUNC1(buf, 10, &val) || val != 0)
		return -EINVAL;

	mask = FUNC4(attr)->nr;

	FUNC2(&data->update_lock);
	reg = FUNC5(data, W83627EHF_REG_CASEOPEN_CLR);
	FUNC6(data, W83627EHF_REG_CASEOPEN_CLR, reg | mask);
	FUNC6(data, W83627EHF_REG_CASEOPEN_CLR, reg & ~mask);
	data->valid = 0;	/* Force cache refresh */
	FUNC3(&data->update_lock);

	return count;
}