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
typedef  int u32 ;
struct irq_data {int /*<<< orphan*/  hwirq; } ;
struct TYPE_2__ {int (* read_reg ) (scalar_t__) ;int /*<<< orphan*/  bgpio_lock; int /*<<< orphan*/  (* write_reg ) (scalar_t__,int) ;} ;
struct grgpio_priv {TYPE_1__ gc; scalar_t__ regs; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int EINVAL ; 
 scalar_t__ GRGPIO_IEDGE ; 
 scalar_t__ GRGPIO_IPOL ; 
#define  IRQ_TYPE_EDGE_FALLING 131 
#define  IRQ_TYPE_EDGE_RISING 130 
#define  IRQ_TYPE_LEVEL_HIGH 129 
#define  IRQ_TYPE_LEVEL_LOW 128 
 struct grgpio_priv* FUNC1 (struct irq_data*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int FUNC4 (scalar_t__) ; 
 int FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,int) ; 

__attribute__((used)) static int FUNC8(struct irq_data *d, unsigned int type)
{
	struct grgpio_priv *priv = FUNC1(d);
	unsigned long flags;
	u32 mask = FUNC0(d->hwirq);
	u32 ipol;
	u32 iedge;
	u32 pol;
	u32 edge;

	switch (type) {
	case IRQ_TYPE_LEVEL_LOW:
		pol = 0;
		edge = 0;
		break;
	case IRQ_TYPE_LEVEL_HIGH:
		pol = mask;
		edge = 0;
		break;
	case IRQ_TYPE_EDGE_FALLING:
		pol = 0;
		edge = mask;
		break;
	case IRQ_TYPE_EDGE_RISING:
		pol = mask;
		edge = mask;
		break;
	default:
		return -EINVAL;
	}

	FUNC2(&priv->gc.bgpio_lock, flags);

	ipol = priv->gc.read_reg(priv->regs + GRGPIO_IPOL) & ~mask;
	iedge = priv->gc.read_reg(priv->regs + GRGPIO_IEDGE) & ~mask;

	priv->gc.write_reg(priv->regs + GRGPIO_IPOL, ipol | pol);
	priv->gc.write_reg(priv->regs + GRGPIO_IEDGE, iedge | edge);

	FUNC3(&priv->gc.bgpio_lock, flags);

	return 0;
}