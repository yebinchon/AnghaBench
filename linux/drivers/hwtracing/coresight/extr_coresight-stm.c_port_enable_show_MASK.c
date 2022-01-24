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
struct stm_drvdata {unsigned long stmsper; int /*<<< orphan*/  spinlock; scalar_t__ base; int /*<<< orphan*/  mode; } ;
struct device_attribute {int dummy; } ;
struct device {int /*<<< orphan*/  parent; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  PAGE_SIZE ; 
 scalar_t__ STMSPER ; 
 struct stm_drvdata* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 unsigned long FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,char*,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static ssize_t FUNC6(struct device *dev,
				struct device_attribute *attr, char *buf)
{
	struct stm_drvdata *drvdata = FUNC0(dev->parent);
	unsigned long val;

	if (!FUNC1(&drvdata->mode)) {
		val = drvdata->stmsper;
	} else {
		FUNC4(&drvdata->spinlock);
		val = FUNC2(drvdata->base + STMSPER);
		FUNC5(&drvdata->spinlock);
	}

	return FUNC3(buf, PAGE_SIZE, "%#lx\n", val);
}