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
struct etmv4_config {unsigned long eventctrl1; } ;
struct etmv4_drvdata {int nr_event; int /*<<< orphan*/  spinlock; struct etmv4_config config; } ;
struct device_attribute {int dummy; } ;
struct device {int /*<<< orphan*/  parent; } ;
typedef  size_t ssize_t ;

/* Variables and functions */
 unsigned long FUNC0 (int) ; 
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
	/* start by clearing all instruction event enable bits */
	config->eventctrl1 &= ~(FUNC0(0) | FUNC0(1) | FUNC0(2) | FUNC0(3));
	switch (drvdata->nr_event) {
	case 0x0:
		/* generate Event element for event 1 */
		config->eventctrl1 |= val & FUNC0(1);
		break;
	case 0x1:
		/* generate Event element for event 1 and 2 */
		config->eventctrl1 |= val & (FUNC0(0) | FUNC0(1));
		break;
	case 0x2:
		/* generate Event element for event 1, 2 and 3 */
		config->eventctrl1 |= val & (FUNC0(0) | FUNC0(1) | FUNC0(2));
		break;
	case 0x3:
		/* generate Event element for all 4 events */
		config->eventctrl1 |= val & 0xF;
		break;
	default:
		break;
	}
	FUNC4(&drvdata->spinlock);
	return size;
}