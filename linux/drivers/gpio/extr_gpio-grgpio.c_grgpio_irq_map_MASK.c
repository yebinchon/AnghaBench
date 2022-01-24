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
struct irq_domain {struct grgpio_priv* host_data; } ;
struct grgpio_uirq {scalar_t__ refcnt; int /*<<< orphan*/  uirq; } ;
struct TYPE_2__ {int /*<<< orphan*/  bgpio_lock; } ;
struct grgpio_priv {TYPE_1__ gc; int /*<<< orphan*/  dev; struct grgpio_uirq* uirqs; struct grgpio_lirq* lirqs; } ;
struct grgpio_lirq {size_t index; unsigned int irq; } ;
typedef  int irq_hw_number_t ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,unsigned int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  grgpio_irq_chip ; 
 int /*<<< orphan*/  grgpio_irq_handler ; 
 int /*<<< orphan*/  handle_simple_irq ; 
 int /*<<< orphan*/  FUNC3 (unsigned int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (unsigned int,struct grgpio_priv*) ; 
 int /*<<< orphan*/  FUNC5 (unsigned int) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct grgpio_priv*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC9(struct irq_domain *d, unsigned int irq,
			  irq_hw_number_t hwirq)
{
	struct grgpio_priv *priv = d->host_data;
	struct grgpio_lirq *lirq;
	struct grgpio_uirq *uirq;
	unsigned long flags;
	int offset = hwirq;
	int ret = 0;

	if (!priv)
		return -EINVAL;

	lirq = &priv->lirqs[offset];
	if (lirq->index < 0)
		return -EINVAL;

	FUNC0(priv->dev, "Mapping irq %d for gpio line %d\n",
		irq, offset);

	FUNC7(&priv->gc.bgpio_lock, flags);

	/* Request underlying irq if not already requested */
	lirq->irq = irq;
	uirq = &priv->uirqs[lirq->index];
	if (uirq->refcnt == 0) {
		ret = FUNC6(uirq->uirq, grgpio_irq_handler, 0,
				  FUNC2(priv->dev), priv);
		if (ret) {
			FUNC1(priv->dev,
				"Could not request underlying irq %d\n",
				uirq->uirq);

			FUNC8(&priv->gc.bgpio_lock, flags);

			return ret;
		}
	}
	uirq->refcnt++;

	FUNC8(&priv->gc.bgpio_lock, flags);

	/* Setup irq  */
	FUNC4(irq, priv);
	FUNC3(irq, &grgpio_irq_chip,
				 handle_simple_irq);
	FUNC5(irq);

	return ret;
}