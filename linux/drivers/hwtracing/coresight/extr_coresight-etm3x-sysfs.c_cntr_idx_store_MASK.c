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
struct etm_config {unsigned long cntr_idx; } ;
struct etm_drvdata {unsigned long nr_cntr; int /*<<< orphan*/  spinlock; struct etm_config config; } ;
struct device_attribute {int dummy; } ;
struct device {int /*<<< orphan*/  parent; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int EINVAL ; 
 struct etm_drvdata* FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (char const*,int,unsigned long*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static ssize_t FUNC4(struct device *dev,
			      struct device_attribute *attr,
			      const char *buf, size_t size)
{
	int ret;
	unsigned long val;
	struct etm_drvdata *drvdata = FUNC0(dev->parent);
	struct etm_config *config = &drvdata->config;

	ret = FUNC1(buf, 16, &val);
	if (ret)
		return ret;

	if (val >= drvdata->nr_cntr)
		return -EINVAL;
	/*
	 * Use spinlock to ensure index doesn't change while it gets
	 * dereferenced multiple times within a spinlock block elsewhere.
	 */
	FUNC2(&drvdata->spinlock);
	config->cntr_idx = val;
	FUNC3(&drvdata->spinlock);

	return size;
}