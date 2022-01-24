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
struct platform_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ENXIO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (struct platform_device*,int) ; 
 int FUNC2 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  sa11x0_dma_irq ; 

__attribute__((used)) static int FUNC3(struct platform_device *pdev, int nr,
	void *data)
{
	int irq = FUNC1(pdev, nr);

	if (irq <= 0)
		return -ENXIO;

	return FUNC2(irq, sa11x0_dma_irq, 0, FUNC0(&pdev->dev), data);
}