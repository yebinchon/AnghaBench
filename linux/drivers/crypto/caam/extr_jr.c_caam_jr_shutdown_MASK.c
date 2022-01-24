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
struct device {int dummy; } ;
struct caam_drv_private_jr {int /*<<< orphan*/  irqtask; } ;

/* Variables and functions */
 int FUNC0 (struct device*) ; 
 struct caam_drv_private_jr* FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct device *dev)
{
	struct caam_drv_private_jr *jrp = FUNC1(dev);
	int ret;

	ret = FUNC0(dev);

	FUNC2(&jrp->irqtask);

	return ret;
}