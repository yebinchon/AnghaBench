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
struct irq_data {int hwirq; } ;
struct TYPE_2__ {int /*<<< orphan*/  bgpio_lock; } ;
struct grgpio_priv {TYPE_1__ gc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct grgpio_priv*,int,int /*<<< orphan*/ ) ; 
 struct grgpio_priv* FUNC1 (struct irq_data*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC4(struct irq_data *d)
{
	struct grgpio_priv *priv = FUNC1(d);
	int offset = d->hwirq;
	unsigned long flags;

	FUNC2(&priv->gc.bgpio_lock, flags);

	FUNC0(priv, offset, 0);

	FUNC3(&priv->gc.bgpio_lock, flags);
}