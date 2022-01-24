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
struct etmv4_config {unsigned long vmid_mask0; unsigned long vmid_mask1; } ;
struct etmv4_drvdata {int /*<<< orphan*/  spinlock; struct etmv4_config config; } ;
struct device_attribute {int dummy; } ;
struct device {int /*<<< orphan*/  parent; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  PAGE_SIZE ; 
 struct etmv4_drvdata* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,char*,unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static ssize_t FUNC4(struct device *dev,
			       struct device_attribute *attr, char *buf)
{
	unsigned long val1, val2;
	struct etmv4_drvdata *drvdata = FUNC0(dev->parent);
	struct etmv4_config *config = &drvdata->config;

	FUNC2(&drvdata->spinlock);
	val1 = config->vmid_mask0;
	val2 = config->vmid_mask1;
	FUNC3(&drvdata->spinlock);
	return FUNC1(buf, PAGE_SIZE, "%#lx %#lx\n", val1, val2);
}