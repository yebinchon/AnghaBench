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
struct tegra_hsp {unsigned int num_si; unsigned int* shared_irqs; unsigned int shared_irq; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ENOENT ; 
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct tegra_hsp*) ; 
 int /*<<< orphan*/  tegra_hsp_shared_irq ; 
 int /*<<< orphan*/  FUNC5 (struct tegra_hsp*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct tegra_hsp *hsp)
{
	unsigned int i, irq = 0;
	int err;

	for (i = 0; i < hsp->num_si; i++) {
		irq = hsp->shared_irqs[i];
		if (irq <= 0)
			continue;

		err = FUNC4(hsp->dev, irq, tegra_hsp_shared_irq, 0,
				       FUNC3(hsp->dev), hsp);
		if (err < 0) {
			FUNC2(hsp->dev, "failed to request interrupt: %d\n",
				err);
			continue;
		}

		hsp->shared_irq = i;

		/* disable all interrupts */
		FUNC5(hsp, 0, FUNC0(hsp->shared_irq));

		FUNC1(hsp->dev, "interrupt requested: %u\n", irq);

		break;
	}

	if (i == hsp->num_si) {
		FUNC2(hsp->dev, "failed to find available interrupt\n");
		return -ENOENT;
	}

	return 0;
}