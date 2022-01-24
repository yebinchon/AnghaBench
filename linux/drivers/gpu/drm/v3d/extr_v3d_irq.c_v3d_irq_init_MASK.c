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
struct v3d_dev {int cores; int single_irq_line; int /*<<< orphan*/  dev; int /*<<< orphan*/  pdev; int /*<<< orphan*/  overflow_mem_work; } ;

/* Variables and functions */
 int EPROBE_DEFER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IRQF_SHARED ; 
 int /*<<< orphan*/  V3D_CORE_IRQS ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  V3D_CTL_INT_CLR ; 
 int /*<<< orphan*/  V3D_HUB_INT_CLR ; 
 int /*<<< orphan*/  V3D_HUB_IRQS ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC4 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,struct v3d_dev*) ; 
 int FUNC5 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  v3d_hub_irq ; 
 int /*<<< orphan*/  v3d_irq ; 
 int /*<<< orphan*/  FUNC6 (struct v3d_dev*) ; 
 int /*<<< orphan*/  v3d_overflow_mem_work ; 

int
FUNC7(struct v3d_dev *v3d)
{
	int irq1, ret, core;

	FUNC0(&v3d->overflow_mem_work, v3d_overflow_mem_work);

	/* Clear any pending interrupts someone might have left around
	 * for us.
	 */
	for (core = 0; core < v3d->cores; core++)
		FUNC1(core, V3D_CTL_INT_CLR, V3D_CORE_IRQS);
	FUNC2(V3D_HUB_INT_CLR, V3D_HUB_IRQS);

	irq1 = FUNC5(v3d->pdev, 1);
	if (irq1 == -EPROBE_DEFER)
		return irq1;
	if (irq1 > 0) {
		ret = FUNC4(v3d->dev, irq1,
				       v3d_irq, IRQF_SHARED,
				       "v3d_core0", v3d);
		if (ret)
			goto fail;
		ret = FUNC4(v3d->dev, FUNC5(v3d->pdev, 0),
				       v3d_hub_irq, IRQF_SHARED,
				       "v3d_hub", v3d);
		if (ret)
			goto fail;
	} else {
		v3d->single_irq_line = true;

		ret = FUNC4(v3d->dev, FUNC5(v3d->pdev, 0),
				       v3d_irq, IRQF_SHARED,
				       "v3d", v3d);
		if (ret)
			goto fail;
	}

	FUNC6(v3d);
	return 0;

fail:
	if (ret != -EPROBE_DEFER)
		FUNC3(v3d->dev, "IRQ setup failed: %d\n", ret);
	return ret;
}