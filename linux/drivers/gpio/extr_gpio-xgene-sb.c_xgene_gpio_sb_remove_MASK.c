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
struct xgene_gpio_sb {scalar_t__ nirq; int /*<<< orphan*/  irq_domain; int /*<<< orphan*/  gc; } ;
struct platform_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct xgene_gpio_sb* FUNC2 (struct platform_device*) ; 

__attribute__((used)) static int FUNC3(struct platform_device *pdev)
{
	struct xgene_gpio_sb *priv = FUNC2(pdev);

	if (priv->nirq > 0) {
		FUNC0(&priv->gc);
	}

	FUNC1(priv->irq_domain);

	return 0;
}