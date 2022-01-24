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
struct brcmstb_gpio_priv {TYPE_1__* pdev; int /*<<< orphan*/  parent_wake_irq; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,char*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct brcmstb_gpio_priv *priv,
		unsigned int enable)
{
	int ret = 0;

	if (enable)
		ret = FUNC2(priv->parent_wake_irq);
	else
		ret = FUNC1(priv->parent_wake_irq);
	if (ret)
		FUNC0(&priv->pdev->dev, "failed to %s wake-up interrupt\n",
				enable ? "enable" : "disable");
	return ret;
}