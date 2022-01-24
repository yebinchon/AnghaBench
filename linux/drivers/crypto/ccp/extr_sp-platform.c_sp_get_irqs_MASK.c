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
struct sp_platform {unsigned int irq_count; } ;
struct sp_device {int psp_irq; int ccp_irq; struct device* dev; struct sp_platform* dev_specific; } ;
struct resource {int dummy; } ;
struct platform_device {unsigned int num_resources; struct resource* resource; } ;
struct device {int dummy; } ;

/* Variables and functions */
 scalar_t__ IORESOURCE_IRQ ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*,int) ; 
 int FUNC1 (struct platform_device*,int) ; 
 scalar_t__ FUNC2 (struct resource*) ; 
 struct platform_device* FUNC3 (struct device*) ; 

__attribute__((used)) static int FUNC4(struct sp_device *sp)
{
	struct sp_platform *sp_platform = sp->dev_specific;
	struct device *dev = sp->dev;
	struct platform_device *pdev = FUNC3(dev);
	unsigned int i, count;
	int ret;

	for (i = 0, count = 0; i < pdev->num_resources; i++) {
		struct resource *res = &pdev->resource[i];

		if (FUNC2(res) == IORESOURCE_IRQ)
			count++;
	}

	sp_platform->irq_count = count;

	ret = FUNC1(pdev, 0);
	if (ret < 0) {
		FUNC0(dev, "unable to get IRQ (%d)\n", ret);
		return ret;
	}

	sp->psp_irq = ret;
	if (count == 1) {
		sp->ccp_irq = ret;
	} else {
		ret = FUNC1(pdev, 1);
		if (ret < 0) {
			FUNC0(dev, "unable to get IRQ (%d)\n", ret);
			return ret;
		}

		sp->ccp_irq = ret;
	}

	return 0;
}