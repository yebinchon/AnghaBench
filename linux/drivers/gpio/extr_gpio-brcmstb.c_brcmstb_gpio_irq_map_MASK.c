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
struct irq_domain {struct brcmstb_gpio_priv* host_data; } ;
struct brcmstb_gpio_priv {int /*<<< orphan*/  irq_chip; struct platform_device* pdev; } ;
struct brcmstb_gpio_bank {int /*<<< orphan*/  gc; int /*<<< orphan*/  id; } ;
typedef  scalar_t__ irq_hw_number_t ;

/* Variables and functions */
 int EINVAL ; 
 struct brcmstb_gpio_bank* FUNC0 (struct brcmstb_gpio_priv*,scalar_t__) ; 
 int /*<<< orphan*/  brcmstb_gpio_irq_lock_class ; 
 int /*<<< orphan*/  brcmstb_gpio_irq_request_class ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,unsigned int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  handle_level_irq ; 
 int /*<<< orphan*/  FUNC2 (unsigned int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC3 (unsigned int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (unsigned int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (unsigned int) ; 

__attribute__((used)) static int FUNC6(struct irq_domain *d, unsigned int irq,
		irq_hw_number_t hwirq)
{
	struct brcmstb_gpio_priv *priv = d->host_data;
	struct brcmstb_gpio_bank *bank =
		FUNC0(priv, hwirq);
	struct platform_device *pdev = priv->pdev;
	int ret;

	if (!bank)
		return -EINVAL;

	FUNC1(&pdev->dev, "Mapping irq %d for gpio line %d (bank %d)\n",
		irq, (int)hwirq, bank->id);
	ret = FUNC3(irq, &bank->gc);
	if (ret < 0)
		return ret;
	FUNC4(irq, &brcmstb_gpio_irq_lock_class,
			      &brcmstb_gpio_irq_request_class);
	FUNC2(irq, &priv->irq_chip, handle_level_irq);
	FUNC5(irq);
	return 0;
}