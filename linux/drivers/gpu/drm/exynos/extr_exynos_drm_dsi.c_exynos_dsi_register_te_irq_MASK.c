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
struct exynos_dsi {int te_gpio; int /*<<< orphan*/  dev; } ;
struct device {int /*<<< orphan*/  of_node; } ;

/* Variables and functions */
 int ENOENT ; 
 int /*<<< orphan*/  IRQF_TRIGGER_RISING ; 
 int /*<<< orphan*/  IRQ_NOAUTOEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  exynos_dsi_te_irq_handler ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (int,char*) ; 
 int FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int FUNC7 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,struct exynos_dsi*) ; 

__attribute__((used)) static int FUNC8(struct exynos_dsi *dsi,
				      struct device *panel)
{
	int ret;
	int te_gpio_irq;

	dsi->te_gpio = FUNC6(panel->of_node, "te-gpios", 0);
	if (dsi->te_gpio == -ENOENT)
		return 0;

	if (!FUNC2(dsi->te_gpio)) {
		ret = dsi->te_gpio;
		FUNC0(dsi->dev, "cannot get te-gpios, %d\n", ret);
		goto out;
	}

	ret = FUNC3(dsi->te_gpio, "te_gpio");
	if (ret) {
		FUNC0(dsi->dev, "gpio request failed with %d\n", ret);
		goto out;
	}

	te_gpio_irq = FUNC4(dsi->te_gpio);
	FUNC5(te_gpio_irq, IRQ_NOAUTOEN);

	ret = FUNC7(te_gpio_irq, exynos_dsi_te_irq_handler, NULL,
					IRQF_TRIGGER_RISING, "TE", dsi);
	if (ret) {
		FUNC0(dsi->dev, "request interrupt failed with %d\n", ret);
		FUNC1(dsi->te_gpio);
		goto out;
	}

out:
	return ret;
}