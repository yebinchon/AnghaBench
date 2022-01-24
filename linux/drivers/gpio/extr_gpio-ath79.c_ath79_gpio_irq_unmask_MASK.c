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
struct irq_data {int dummy; } ;
struct ath79_gpio_ctrl {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  AR71XX_GPIO_REG_INT_MASK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ath79_gpio_ctrl*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct ath79_gpio_ctrl* FUNC2 (struct irq_data*) ; 
 int /*<<< orphan*/  FUNC3 (struct irq_data*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC6(struct irq_data *data)
{
	struct ath79_gpio_ctrl *ctrl = FUNC2(data);
	u32 mask = FUNC0(FUNC3(data));
	unsigned long flags;

	FUNC4(&ctrl->lock, flags);
	FUNC1(ctrl, AR71XX_GPIO_REG_INT_MASK, mask, mask);
	FUNC5(&ctrl->lock, flags);
}