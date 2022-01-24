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
typedef  int u32 ;
struct etm_config {int* cntr_val; } ;
struct etm_drvdata {int nr_cntr; int /*<<< orphan*/  spinlock; int /*<<< orphan*/  mode; struct etm_config config; } ;
struct device_attribute {int dummy; } ;
struct device {int /*<<< orphan*/  parent; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 struct etm_drvdata* FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct etm_drvdata*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (char*,char*,int,int) ; 

__attribute__((used)) static ssize_t FUNC7(struct device *dev,
			     struct device_attribute *attr, char *buf)
{
	int i, ret = 0;
	u32 val;
	struct etm_drvdata *drvdata = FUNC1(dev->parent);
	struct etm_config *config = &drvdata->config;

	if (!FUNC3(&drvdata->mode)) {
		FUNC4(&drvdata->spinlock);
		for (i = 0; i < drvdata->nr_cntr; i++)
			ret += FUNC6(buf, "counter %d: %x\n",
				       i, config->cntr_val[i]);
		FUNC5(&drvdata->spinlock);
		return ret;
	}

	for (i = 0; i < drvdata->nr_cntr; i++) {
		val = FUNC2(drvdata, FUNC0(i));
		ret += FUNC6(buf, "counter %d: %x\n", i, val);
	}

	return ret;
}