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
typedef  int u32 ;
struct xgene_gpio_sb {scalar_t__ regs; int /*<<< orphan*/  gc; } ;
struct irq_domain {struct xgene_gpio_sb* host_data; } ;
struct irq_data {int /*<<< orphan*/  hwirq; } ;

/* Variables and functions */
 int FUNC0 (struct xgene_gpio_sb*,int /*<<< orphan*/ ) ; 
 scalar_t__ MPA_GPIO_SEL_LO ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,scalar_t__,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct irq_domain *d,
		struct irq_data *irq_data)
{
	struct xgene_gpio_sb *priv = d->host_data;
	u32 gpio = FUNC0(priv, irq_data->hwirq);

	FUNC1(&priv->gc, gpio);
	FUNC2(&priv->gc, priv->regs + MPA_GPIO_SEL_LO,
			gpio * 2, 0);
}