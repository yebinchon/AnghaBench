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
struct etmv4_config {size_t addr_idx; int /*<<< orphan*/ * addr_acc; } ;
struct etmv4_drvdata {int /*<<< orphan*/  spinlock; struct etmv4_config config; } ;
struct device_attribute {int dummy; } ;
struct device {int /*<<< orphan*/  parent; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 unsigned long FUNC0 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 struct etmv4_drvdata* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,char*,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static ssize_t FUNC5(struct device *dev,
				 struct device_attribute *attr,
				 char *buf)
{
	u8 idx;
	unsigned long val;
	struct etmv4_drvdata *drvdata = FUNC1(dev->parent);
	struct etmv4_config *config = &drvdata->config;

	FUNC3(&drvdata->spinlock);
	idx = config->addr_idx;
	/* context ID comparator bits[6:4] */
	val = FUNC0(config->addr_acc[idx], 4, 6);
	FUNC4(&drvdata->spinlock);
	return FUNC2(buf, PAGE_SIZE, "%#lx\n", val);
}