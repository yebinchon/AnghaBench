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
struct etmv4_config {size_t addr_idx; int* addr_acc; } ;
struct etmv4_drvdata {int /*<<< orphan*/  spinlock; struct etmv4_config config; } ;
struct device_attribute {int dummy; } ;
struct device {int /*<<< orphan*/  parent; } ;
typedef  size_t ssize_t ;

/* Variables and functions */
 int FUNC0 (int) ; 
 size_t EINVAL ; 
 struct etmv4_drvdata* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (char const*,char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*) ; 
 int FUNC6 (char const*) ; 

__attribute__((used)) static ssize_t FUNC7(struct device *dev,
				       struct device_attribute *attr,
				       const char *buf, size_t size)
{
	u8 idx;
	char str[20] = "";
	struct etmv4_drvdata *drvdata = FUNC1(dev->parent);
	struct etmv4_config *config = &drvdata->config;

	if (FUNC6(buf) >= 20)
		return -EINVAL;
	if (FUNC4(buf, "%s", str) != 1)
		return -EINVAL;

	FUNC2(&drvdata->spinlock);
	idx = config->addr_idx;
	if (!FUNC5(str, "instr"))
		/* TYPE, bits[1:0] */
		config->addr_acc[idx] &= ~(FUNC0(0) | FUNC0(1));

	FUNC3(&drvdata->spinlock);
	return size;
}