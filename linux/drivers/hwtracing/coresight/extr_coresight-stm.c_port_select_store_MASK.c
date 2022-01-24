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
struct stm_drvdata {unsigned long stmspscr; int /*<<< orphan*/  spinlock; scalar_t__ base; int /*<<< orphan*/  mode; } ;
struct device_attribute {int dummy; } ;
struct device {int /*<<< orphan*/  parent; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 scalar_t__ STMSPER ; 
 scalar_t__ STMSPSCR ; 
 struct stm_drvdata* FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (char const*,int,unsigned long*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 unsigned long FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (unsigned long,scalar_t__) ; 

__attribute__((used)) static ssize_t FUNC9(struct device *dev,
				 struct device_attribute *attr,
				 const char *buf, size_t size)
{
	struct stm_drvdata *drvdata = FUNC2(dev->parent);
	unsigned long val, stmsper;
	int ret = 0;

	ret = FUNC3(buf, 16, &val);
	if (ret)
		return ret;

	FUNC6(&drvdata->spinlock);
	drvdata->stmspscr = val;

	if (FUNC4(&drvdata->mode)) {
		FUNC1(drvdata->base);
		/* Process as per ARM's TRM recommendation */
		stmsper = FUNC5(drvdata->base + STMSPER);
		FUNC8(0x0, drvdata->base + STMSPER);
		FUNC8(drvdata->stmspscr, drvdata->base + STMSPSCR);
		FUNC8(stmsper, drvdata->base + STMSPER);
		FUNC0(drvdata->base);
	}
	FUNC7(&drvdata->spinlock);

	return size;
}