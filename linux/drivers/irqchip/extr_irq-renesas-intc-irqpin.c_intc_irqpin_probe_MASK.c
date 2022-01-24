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
struct resource {int start; } ;
struct device {int /*<<< orphan*/  of_node; } ;
struct platform_device {struct device dev; } ;
struct irq_chip {char* name; void (* irq_mask ) (struct irq_data*) ;void (* irq_unmask ) (struct irq_data*) ;int /*<<< orphan*/  flags; int /*<<< orphan*/  irq_set_wake; int /*<<< orphan*/  irq_set_type; struct device* parent_device; } ;
struct intc_irqpin_priv {int sense_bitfield_width; int requested_irq; int shared_irqs; int /*<<< orphan*/  irq_domain; struct intc_irqpin_priv* irq; struct irq_chip irq_chip; struct intc_irqpin_iomem* iomem; struct intc_irqpin_priv* p; struct platform_device* pdev; } ;
struct intc_irqpin_iomem {int width; int /*<<< orphan*/  iomem; int /*<<< orphan*/  write; int /*<<< orphan*/  read; } ;
struct intc_irqpin_config {int /*<<< orphan*/  irlm_bit; scalar_t__ needs_irlm; } ;
typedef  int /*<<< orphan*/  io ;

/* Variables and functions */
 int EINVAL ; 
 int ENOENT ; 
 int ENOMEM ; 
 int ENXIO ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int INTC_IRQPIN_MAX ; 
 size_t INTC_IRQPIN_REG_IRLM ; 
 int INTC_IRQPIN_REG_NR ; 
 int INTC_IRQPIN_REG_NR_MANDATORY ; 
 int /*<<< orphan*/  INTC_IRQPIN_REG_SOURCE ; 
 int /*<<< orphan*/  IORESOURCE_IRQ ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 int /*<<< orphan*/  IRQCHIP_MASK_ON_SUSPEND ; 
 int /*<<< orphan*/  IRQF_SHARED ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,unsigned int) ; 
 char* FUNC2 (struct device*) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,int,int) ; 
 struct intc_irqpin_priv* FUNC5 (struct device*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (struct device*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*,struct intc_irqpin_priv*) ; 
 void FUNC7 (struct irq_data*) ; 
 void FUNC8 (struct irq_data*) ; 
 int /*<<< orphan*/  intc_irqpin_irq_domain_ops ; 
 void FUNC9 (struct irq_data*) ; 
 void FUNC10 (struct irq_data*) ; 
 int /*<<< orphan*/  intc_irqpin_irq_handler ; 
 int /*<<< orphan*/  intc_irqpin_irq_set_type ; 
 int /*<<< orphan*/  intc_irqpin_irq_set_wake ; 
 int /*<<< orphan*/  FUNC11 (struct intc_irqpin_priv*,int,int) ; 
 int /*<<< orphan*/  intc_irqpin_read32 ; 
 int /*<<< orphan*/  intc_irqpin_read8 ; 
 int /*<<< orphan*/  FUNC12 (struct intc_irqpin_priv*,size_t,int /*<<< orphan*/ ,int,int) ; 
 void FUNC13 (struct irq_data*) ; 
 void FUNC14 (struct irq_data*) ; 
 int /*<<< orphan*/  intc_irqpin_shared_irq_handler ; 
 int /*<<< orphan*/  FUNC15 (struct intc_irqpin_priv*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  intc_irqpin_write32 ; 
 int /*<<< orphan*/  intc_irqpin_write8 ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct intc_irqpin_priv*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (struct resource**,int /*<<< orphan*/ ,int) ; 
 struct intc_irqpin_config* FUNC19 (struct device*) ; 
 int FUNC20 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ,char*,int*) ; 
 struct resource* FUNC22 (struct platform_device*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC23 (struct platform_device*,struct intc_irqpin_priv*) ; 
 int /*<<< orphan*/  FUNC24 (struct device*) ; 
 int /*<<< orphan*/  FUNC25 (struct device*) ; 
 int /*<<< orphan*/  FUNC26 (struct device*) ; 
 int /*<<< orphan*/  FUNC27 (struct device*) ; 
 int FUNC28 (struct resource*) ; 

__attribute__((used)) static int FUNC29(struct platform_device *pdev)
{
	const struct intc_irqpin_config *config;
	struct device *dev = &pdev->dev;
	struct intc_irqpin_priv *p;
	struct intc_irqpin_iomem *i;
	struct resource *io[INTC_IRQPIN_REG_NR];
	struct resource *irq;
	struct irq_chip *irq_chip;
	void (*enable_fn)(struct irq_data *d);
	void (*disable_fn)(struct irq_data *d);
	const char *name = FUNC2(dev);
	bool control_parent;
	unsigned int nirqs;
	int ref_irq;
	int ret;
	int k;

	p = FUNC5(dev, sizeof(*p), GFP_KERNEL);
	if (!p)
		return -ENOMEM;

	/* deal with driver instance configuration */
	FUNC21(dev->of_node, "sense-bitfield-width",
			     &p->sense_bitfield_width);
	control_parent = FUNC20(dev->of_node, "control-parent");
	if (!p->sense_bitfield_width)
		p->sense_bitfield_width = 4; /* default to 4 bits */

	p->pdev = pdev;
	FUNC23(pdev, p);

	config = FUNC19(dev);

	FUNC25(dev);
	FUNC26(dev);

	/* get hold of register banks */
	FUNC18(io, 0, sizeof(io));
	for (k = 0; k < INTC_IRQPIN_REG_NR; k++) {
		io[k] = FUNC22(pdev, IORESOURCE_MEM, k);
		if (!io[k] && k < INTC_IRQPIN_REG_NR_MANDATORY) {
			FUNC0(dev, "not enough IOMEM resources\n");
			ret = -EINVAL;
			goto err0;
		}
	}

	/* allow any number of IRQs between 1 and INTC_IRQPIN_MAX */
	for (k = 0; k < INTC_IRQPIN_MAX; k++) {
		irq = FUNC22(pdev, IORESOURCE_IRQ, k);
		if (!irq)
			break;

		p->irq[k].p = p;
		p->irq[k].requested_irq = irq->start;
	}

	nirqs = k;
	if (nirqs < 1) {
		FUNC0(dev, "not enough IRQ resources\n");
		ret = -EINVAL;
		goto err0;
	}

	/* ioremap IOMEM and setup read/write callbacks */
	for (k = 0; k < INTC_IRQPIN_REG_NR; k++) {
		i = &p->iomem[k];

		/* handle optional registers */
		if (!io[k])
			continue;

		switch (FUNC28(io[k])) {
		case 1:
			i->width = 8;
			i->read = intc_irqpin_read8;
			i->write = intc_irqpin_write8;
			break;
		case 4:
			i->width = 32;
			i->read = intc_irqpin_read32;
			i->write = intc_irqpin_write32;
			break;
		default:
			FUNC0(dev, "IOMEM size mismatch\n");
			ret = -EINVAL;
			goto err0;
		}

		i->iomem = FUNC4(dev, io[k]->start,
						FUNC28(io[k]));
		if (!i->iomem) {
			FUNC0(dev, "failed to remap IOMEM\n");
			ret = -ENXIO;
			goto err0;
		}
	}

	/* configure "individual IRQ mode" where needed */
	if (config && config->needs_irlm) {
		if (io[INTC_IRQPIN_REG_IRLM])
			FUNC12(p, INTC_IRQPIN_REG_IRLM,
						      config->irlm_bit, 1, 1);
		else
			FUNC3(dev, "unable to select IRLM mode\n");
	}

	/* mask all interrupts using priority */
	for (k = 0; k < nirqs; k++)
		FUNC11(p, k, 1);

	/* clear all pending interrupts */
	FUNC15(p, INTC_IRQPIN_REG_SOURCE, 0x0);

	/* scan for shared interrupt lines */
	ref_irq = p->irq[0].requested_irq;
	p->shared_irqs = 1;
	for (k = 1; k < nirqs; k++) {
		if (ref_irq != p->irq[k].requested_irq) {
			p->shared_irqs = 0;
			break;
		}
	}

	/* use more severe masking method if requested */
	if (control_parent) {
		enable_fn = intc_irqpin_irq_enable_force;
		disable_fn = intc_irqpin_irq_disable_force;
	} else if (!p->shared_irqs) {
		enable_fn = intc_irqpin_irq_enable;
		disable_fn = intc_irqpin_irq_disable;
	} else {
		enable_fn = intc_irqpin_shared_irq_enable;
		disable_fn = intc_irqpin_shared_irq_disable;
	}

	irq_chip = &p->irq_chip;
	irq_chip->name = "intc-irqpin";
	irq_chip->parent_device = dev;
	irq_chip->irq_mask = disable_fn;
	irq_chip->irq_unmask = enable_fn;
	irq_chip->irq_set_type = intc_irqpin_irq_set_type;
	irq_chip->irq_set_wake = intc_irqpin_irq_set_wake;
	irq_chip->flags	= IRQCHIP_MASK_ON_SUSPEND;

	p->irq_domain = FUNC16(dev->of_node, nirqs, 0,
					      &intc_irqpin_irq_domain_ops, p);
	if (!p->irq_domain) {
		ret = -ENXIO;
		FUNC0(dev, "cannot initialize irq domain\n");
		goto err0;
	}

	if (p->shared_irqs) {
		/* request one shared interrupt */
		if (FUNC6(dev, p->irq[0].requested_irq,
				intc_irqpin_shared_irq_handler,
				IRQF_SHARED, name, p)) {
			FUNC0(dev, "failed to request low IRQ\n");
			ret = -ENOENT;
			goto err1;
		}
	} else {
		/* request interrupts one by one */
		for (k = 0; k < nirqs; k++) {
			if (FUNC6(dev, p->irq[k].requested_irq,
					     intc_irqpin_irq_handler, 0, name,
					     &p->irq[k])) {
				FUNC0(dev, "failed to request low IRQ\n");
				ret = -ENOENT;
				goto err1;
			}
		}
	}

	/* unmask all interrupts on prio level */
	for (k = 0; k < nirqs; k++)
		FUNC11(p, k, 0);

	FUNC1(dev, "driving %d irqs\n", nirqs);

	return 0;

err1:
	FUNC17(p->irq_domain);
err0:
	FUNC27(dev);
	FUNC24(dev);
	return ret;
}