#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct list_head {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  iommu_fwnode; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,struct list_head*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

void FUNC3(struct device *dev, struct list_head *list)
{

	if (!FUNC2(FUNC0(dev)->iommu_fwnode))
		FUNC1(dev, list);

}