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
struct etmv4_config {int vinst_ctrl; } ;
struct etmv4_drvdata {unsigned long ns_ex_level; int /*<<< orphan*/  spinlock; struct etmv4_config config; } ;
struct device_attribute {int dummy; } ;
struct device {int /*<<< orphan*/  parent; } ;
typedef  size_t ssize_t ;

/* Variables and functions */
 int FUNC0 (int) ; 
 size_t EINVAL ; 
 struct etmv4_drvdata* FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (char const*,int,unsigned long*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static ssize_t FUNC5(struct device *dev,
				      struct device_attribute *attr,
				      const char *buf, size_t size)
{
	unsigned long val;
	struct etmv4_drvdata *drvdata = FUNC1(dev->parent);
	struct etmv4_config *config = &drvdata->config;

	if (FUNC2(buf, 16, &val))
		return -EINVAL;

	FUNC3(&drvdata->spinlock);
	/* clear EXLEVEL_NS bits (bit[23] is never implemented */
	config->vinst_ctrl &= ~(FUNC0(20) | FUNC0(21) | FUNC0(22));
	/* enable instruction tracing for corresponding exception level */
	val &= drvdata->ns_ex_level;
	config->vinst_ctrl |= (val << 20);
	FUNC4(&drvdata->spinlock);
	return size;
}