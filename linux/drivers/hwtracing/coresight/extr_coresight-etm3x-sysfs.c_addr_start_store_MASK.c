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
typedef  size_t u8 ;
struct etm_config {size_t addr_idx; scalar_t__* addr_type; unsigned long* addr_val; int startstop_ctrl; int /*<<< orphan*/  enable_ctrl1; } ;
struct etm_drvdata {int /*<<< orphan*/  spinlock; struct etm_config config; } ;
struct device_attribute {int dummy; } ;
struct device {int /*<<< orphan*/  parent; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EPERM ; 
 scalar_t__ ETM_ADDR_TYPE_NONE ; 
 scalar_t__ ETM_ADDR_TYPE_START ; 
 struct etm_drvdata* FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (char const*,int,unsigned long*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static ssize_t FUNC5(struct device *dev,
				struct device_attribute *attr,
				const char *buf, size_t size)
{
	u8 idx;
	int ret;
	unsigned long val;
	struct etm_drvdata *drvdata = FUNC1(dev->parent);
	struct etm_config *config = &drvdata->config;

	ret = FUNC2(buf, 16, &val);
	if (ret)
		return ret;

	FUNC3(&drvdata->spinlock);
	idx = config->addr_idx;
	if (!(config->addr_type[idx] == ETM_ADDR_TYPE_NONE ||
	      config->addr_type[idx] == ETM_ADDR_TYPE_START)) {
		FUNC4(&drvdata->spinlock);
		return -EPERM;
	}

	config->addr_val[idx] = val;
	config->addr_type[idx] = ETM_ADDR_TYPE_START;
	config->startstop_ctrl |= (1 << idx);
	config->enable_ctrl1 |= FUNC0(25);
	FUNC4(&drvdata->spinlock);

	return size;
}