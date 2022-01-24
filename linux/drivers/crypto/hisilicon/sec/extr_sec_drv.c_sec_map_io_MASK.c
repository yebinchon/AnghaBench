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
struct sec_dev_info {int /*<<< orphan*/  dev; int /*<<< orphan*/ * regs; } ;
struct resource {int /*<<< orphan*/  start; } ;
struct platform_device {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 int SEC_NUM_ADDR_REGIONS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct resource* FUNC2 (struct platform_device*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct resource*) ; 

__attribute__((used)) static int FUNC4(struct sec_dev_info *info, struct platform_device *pdev)
{
	struct resource *res;
	int i;

	for (i = 0; i < SEC_NUM_ADDR_REGIONS; i++) {
		res = FUNC2(pdev, IORESOURCE_MEM, i);

		if (!res) {
			FUNC0(info->dev, "Memory resource %d not found\n", i);
			return -EINVAL;
		}

		info->regs[i] = FUNC1(info->dev, res->start,
					     FUNC3(res));
		if (!info->regs[i]) {
			FUNC0(info->dev,
				"Memory resource %d could not be remapped\n",
				i);
			return -EINVAL;
		}
	}

	return 0;
}