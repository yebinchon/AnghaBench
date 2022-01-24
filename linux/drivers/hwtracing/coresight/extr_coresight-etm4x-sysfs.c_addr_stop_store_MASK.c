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
typedef  scalar_t__ u64 ;
struct etmv4_config {size_t addr_idx; scalar_t__* addr_type; int /*<<< orphan*/  vinst_ctrl; int /*<<< orphan*/  vissctlr; scalar_t__* addr_val; } ;
struct etmv4_drvdata {int /*<<< orphan*/  spinlock; int /*<<< orphan*/  nr_addr_cmp; struct etmv4_config config; } ;
struct device_attribute {int dummy; } ;
struct device {int /*<<< orphan*/  parent; } ;
typedef  size_t ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 size_t EINVAL ; 
 size_t EPERM ; 
 scalar_t__ ETM_ADDR_TYPE_NONE ; 
 scalar_t__ ETM_ADDR_TYPE_STOP ; 
 struct etmv4_drvdata* FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (char const*,int,unsigned long*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static ssize_t FUNC5(struct device *dev,
			       struct device_attribute *attr,
			       const char *buf, size_t size)
{
	u8 idx;
	unsigned long val;
	struct etmv4_drvdata *drvdata = FUNC1(dev->parent);
	struct etmv4_config *config = &drvdata->config;

	if (FUNC2(buf, 16, &val))
		return -EINVAL;

	FUNC3(&drvdata->spinlock);
	idx = config->addr_idx;
	if (!drvdata->nr_addr_cmp) {
		FUNC4(&drvdata->spinlock);
		return -EINVAL;
	}
	if (!(config->addr_type[idx] == ETM_ADDR_TYPE_NONE ||
	       config->addr_type[idx] == ETM_ADDR_TYPE_STOP)) {
		FUNC4(&drvdata->spinlock);
		return -EPERM;
	}

	config->addr_val[idx] = (u64)val;
	config->addr_type[idx] = ETM_ADDR_TYPE_STOP;
	config->vissctlr |= FUNC0(idx + 16);
	/* SSSTATUS, bit[9] - turn on start/stop logic */
	config->vinst_ctrl |= FUNC0(9);
	FUNC4(&drvdata->spinlock);
	return size;
}