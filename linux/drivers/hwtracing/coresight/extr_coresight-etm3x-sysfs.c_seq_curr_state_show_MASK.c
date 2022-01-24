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
struct etm_config {unsigned long seq_curr_state; } ;
struct etm_drvdata {int /*<<< orphan*/  spinlock; int /*<<< orphan*/  base; int /*<<< orphan*/  mode; struct etm_config config; } ;
struct device_attribute {int dummy; } ;
struct device {int /*<<< orphan*/  parent; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ETMSQR ; 
 unsigned long ETM_SQR_MASK ; 
 struct etm_drvdata* FUNC2 (int /*<<< orphan*/ ) ; 
 unsigned long FUNC3 (struct etm_drvdata*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (char*,char*,unsigned long) ; 

__attribute__((used)) static ssize_t FUNC10(struct device *dev,
				   struct device_attribute *attr, char *buf)
{
	unsigned long val, flags;
	struct etm_drvdata *drvdata = FUNC2(dev->parent);
	struct etm_config *config = &drvdata->config;

	if (!FUNC4(&drvdata->mode)) {
		val = config->seq_curr_state;
		goto out;
	}

	FUNC5(dev->parent);
	FUNC7(&drvdata->spinlock, flags);

	FUNC1(drvdata->base);
	val = (FUNC3(drvdata, ETMSQR) & ETM_SQR_MASK);
	FUNC0(drvdata->base);

	FUNC8(&drvdata->spinlock, flags);
	FUNC6(dev->parent);
out:
	return FUNC9(buf, "%#lx\n", val);
}