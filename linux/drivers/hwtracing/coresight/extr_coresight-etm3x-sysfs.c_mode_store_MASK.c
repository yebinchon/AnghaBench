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
struct etm_config {unsigned long mode; int /*<<< orphan*/  ctrl; int /*<<< orphan*/  enable_ctrl1; } ;
struct etm_drvdata {int etmccr; int etmccer; int /*<<< orphan*/  spinlock; struct etm_config config; } ;
struct device_attribute {int dummy; } ;
struct device {int /*<<< orphan*/  parent; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int EINVAL ; 
 int ETMCCER_TIMESTAMP ; 
 int ETMCCR_FIFOFULL ; 
 int /*<<< orphan*/  ETMCR_BRANCH_BROADCAST ; 
 int /*<<< orphan*/  ETMCR_CTXID_SIZE ; 
 int /*<<< orphan*/  ETMCR_CYC_ACC ; 
 int /*<<< orphan*/  ETMCR_RETURN_STACK ; 
 int /*<<< orphan*/  ETMCR_STALL_MODE ; 
 int /*<<< orphan*/  ETMCR_TIMESTAMP_EN ; 
 int /*<<< orphan*/  ETMTECR1_INC_EXC ; 
 unsigned long ETM_MODE_ALL ; 
 int ETM_MODE_BBROAD ; 
 int ETM_MODE_CTXID ; 
 int ETM_MODE_CYCACC ; 
 int ETM_MODE_EXCLUDE ; 
 int ETM_MODE_EXCL_KERN ; 
 int ETM_MODE_EXCL_USER ; 
 int ETM_MODE_RET_STACK ; 
 int ETM_MODE_STALL ; 
 int ETM_MODE_TIMESTAMP ; 
 struct etm_drvdata* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct etm_config*) ; 
 int FUNC3 (char const*,int,unsigned long*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static ssize_t FUNC6(struct device *dev,
			  struct device_attribute *attr,
			  const char *buf, size_t size)
{
	int ret;
	unsigned long val;
	struct etm_drvdata *drvdata = FUNC0(dev->parent);
	struct etm_config *config = &drvdata->config;

	ret = FUNC3(buf, 16, &val);
	if (ret)
		return ret;

	FUNC4(&drvdata->spinlock);
	config->mode = val & ETM_MODE_ALL;

	if (config->mode & ETM_MODE_EXCLUDE)
		config->enable_ctrl1 |= ETMTECR1_INC_EXC;
	else
		config->enable_ctrl1 &= ~ETMTECR1_INC_EXC;

	if (config->mode & ETM_MODE_CYCACC)
		config->ctrl |= ETMCR_CYC_ACC;
	else
		config->ctrl &= ~ETMCR_CYC_ACC;

	if (config->mode & ETM_MODE_STALL) {
		if (!(drvdata->etmccr & ETMCCR_FIFOFULL)) {
			FUNC1(dev, "stall mode not supported\n");
			ret = -EINVAL;
			goto err_unlock;
		}
		config->ctrl |= ETMCR_STALL_MODE;
	} else
		config->ctrl &= ~ETMCR_STALL_MODE;

	if (config->mode & ETM_MODE_TIMESTAMP) {
		if (!(drvdata->etmccer & ETMCCER_TIMESTAMP)) {
			FUNC1(dev, "timestamp not supported\n");
			ret = -EINVAL;
			goto err_unlock;
		}
		config->ctrl |= ETMCR_TIMESTAMP_EN;
	} else
		config->ctrl &= ~ETMCR_TIMESTAMP_EN;

	if (config->mode & ETM_MODE_CTXID)
		config->ctrl |= ETMCR_CTXID_SIZE;
	else
		config->ctrl &= ~ETMCR_CTXID_SIZE;

	if (config->mode & ETM_MODE_BBROAD)
		config->ctrl |= ETMCR_BRANCH_BROADCAST;
	else
		config->ctrl &= ~ETMCR_BRANCH_BROADCAST;

	if (config->mode & ETM_MODE_RET_STACK)
		config->ctrl |= ETMCR_RETURN_STACK;
	else
		config->ctrl &= ~ETMCR_RETURN_STACK;

	if (config->mode & (ETM_MODE_EXCL_KERN | ETM_MODE_EXCL_USER))
		FUNC2(config);

	FUNC5(&drvdata->spinlock);

	return size;

err_unlock:
	FUNC5(&drvdata->spinlock);
	return ret;
}