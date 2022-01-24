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
struct uniphier_gpio_priv {int /*<<< orphan*/  lock; scalar_t__ regs; } ;

/* Variables and functions */
 int FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC4(struct uniphier_gpio_priv *priv,
				     unsigned int reg, u32 mask, u32 val)
{
	unsigned long flags;
	u32 tmp;

	FUNC1(&priv->lock, flags);
	tmp = FUNC0(priv->regs + reg);
	tmp &= ~mask;
	tmp |= mask & val;
	FUNC3(tmp, priv->regs + reg);
	FUNC2(&priv->lock, flags);
}