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
typedef  int /*<<< orphan*/  u32 ;
struct uniphier_gpio_priv {int dummy; } ;
struct irq_data {int /*<<< orphan*/  hwirq; struct uniphier_gpio_priv* chip_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  UNIPHIER_GPIO_IRQ_EN ; 
 void FUNC1 (struct irq_data*) ; 
 int /*<<< orphan*/  FUNC2 (struct uniphier_gpio_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct irq_data *data)
{
	struct uniphier_gpio_priv *priv = data->chip_data;
	u32 mask = FUNC0(data->hwirq);

	FUNC2(priv, UNIPHIER_GPIO_IRQ_EN, mask, 0);

	return FUNC1(data);
}