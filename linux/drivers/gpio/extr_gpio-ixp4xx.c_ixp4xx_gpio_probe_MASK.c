#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct resource {int /*<<< orphan*/  start; } ;
struct device {struct device_node* of_node; } ;
struct platform_device {struct device dev; } ;
struct gpio_irq_chip {int /*<<< orphan*/  default_type; int /*<<< orphan*/  handler; int /*<<< orphan*/  child_to_parent_hwirq; struct irq_domain* parent_domain; scalar_t__ fwnode; int /*<<< orphan*/ * chip; } ;
struct TYPE_3__ {int ngpio; char* label; struct gpio_irq_chip irq; int /*<<< orphan*/  owner; struct device* parent; scalar_t__ base; } ;
struct ixp4xx_gpio {TYPE_1__ gc; scalar_t__ fwnode; scalar_t__ base; struct device* dev; } ;
struct irq_domain {int dummy; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 unsigned long BGPIOF_BIG_ENDIAN_BYTE_ORDER ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 int /*<<< orphan*/  IRQ_TYPE_NONE ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ IXP4XX_REG_GPCLK ; 
 scalar_t__ IXP4XX_REG_GPIN ; 
 scalar_t__ IXP4XX_REG_GPOE ; 
 scalar_t__ IXP4XX_REG_GPOUT ; 
 int FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 int /*<<< orphan*/  FUNC2 (int,scalar_t__) ; 
 int FUNC3 (TYPE_1__*,struct device*,int,scalar_t__,scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct device*,char*) ; 
 int FUNC6 (struct device*,TYPE_1__*,struct ixp4xx_gpio*) ; 
 scalar_t__ FUNC7 (struct device*,struct resource*) ; 
 struct ixp4xx_gpio* FUNC8 (struct device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  handle_bad_irq ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *) ; 
 struct irq_domain* FUNC10 (struct device_node*) ; 
 struct irq_domain* FUNC11 () ; 
 int /*<<< orphan*/  ixp4xx_gpio_child_to_parent_hwirq ; 
 int /*<<< orphan*/  ixp4xx_gpio_irqchip ; 
 scalar_t__ FUNC12 () ; 
 scalar_t__ FUNC13 () ; 
 struct device_node* FUNC14 (struct device_node*) ; 
 scalar_t__ FUNC15 (struct device_node*) ; 
 struct resource* FUNC16 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (struct platform_device*,struct ixp4xx_gpio*) ; 

__attribute__((used)) static int FUNC18(struct platform_device *pdev)
{
	unsigned long flags;
	struct device *dev = &pdev->dev;
	struct device_node *np = dev->of_node;
	struct irq_domain *parent;
	struct resource *res;
	struct ixp4xx_gpio *g;
	struct gpio_irq_chip *girq;
	int ret;

	g = FUNC8(dev, sizeof(*g), GFP_KERNEL);
	if (!g)
		return -ENOMEM;
	g->dev = dev;

	res = FUNC16(pdev, IORESOURCE_MEM, 0);
	g->base = FUNC7(dev, res);
	if (FUNC0(g->base))
		return FUNC1(g->base);

	/*
	 * When we convert to device tree we will simply look up the
	 * parent irqdomain using irq_find_host(parent) as parent comes
	 * from IRQCHIP_DECLARE(), then use of_node_to_fwnode() to get
	 * the fwnode. For now we need this boardfile style code.
	 */
	if (np) {
		struct device_node *irq_parent;

		irq_parent = FUNC14(np);
		if (!irq_parent) {
			FUNC4(dev, "no IRQ parent node\n");
			return -ENODEV;
		}
		parent = FUNC10(irq_parent);
		if (!parent) {
			FUNC4(dev, "no IRQ parent domain\n");
			return -ENODEV;
		}
		g->fwnode = FUNC15(np);
	} else {
		parent = FUNC11();
		g->fwnode = FUNC9(&res->start);
		if (!g->fwnode) {
			FUNC4(dev, "no domain base\n");
			return -ENODEV;
		}
	}

	/*
	 * Make sure GPIO 14 and 15 are NOT used as clocks but GPIO on
	 * specific machines.
	 */
	if (FUNC12() || FUNC13())
		FUNC2(0x0, g->base + IXP4XX_REG_GPCLK);

	/*
	 * This is a very special big-endian ARM issue: when the IXP4xx is
	 * run in big endian mode, all registers in the machine are switched
	 * around to the CPU-native endianness. As you see mostly in the
	 * driver we use __raw_readl()/__raw_writel() to access the registers
	 * in the appropriate order. With the GPIO library we need to specify
	 * byte order explicitly, so this flag needs to be set when compiling
	 * for big endian.
	 */
#if defined(CONFIG_CPU_BIG_ENDIAN)
	flags = BGPIOF_BIG_ENDIAN_BYTE_ORDER;
#else
	flags = 0;
#endif

	/* Populate and register gpio chip */
	ret = FUNC3(&g->gc, dev, 4,
			 g->base + IXP4XX_REG_GPIN,
			 g->base + IXP4XX_REG_GPOUT,
			 NULL,
			 NULL,
			 g->base + IXP4XX_REG_GPOE,
			 flags);
	if (ret) {
		FUNC4(dev, "unable to init generic GPIO\n");
		return ret;
	}
	g->gc.ngpio = 16;
	g->gc.label = "IXP4XX_GPIO_CHIP";
	/*
	 * TODO: when we have migrated to device tree and all GPIOs
	 * are fetched using phandles, set this to -1 to get rid of
	 * the fixed gpiochip base.
	 */
	g->gc.base = 0;
	g->gc.parent = &pdev->dev;
	g->gc.owner = THIS_MODULE;

	girq = &g->gc.irq;
	girq->chip = &ixp4xx_gpio_irqchip;
	girq->fwnode = g->fwnode;
	girq->parent_domain = parent;
	girq->child_to_parent_hwirq = ixp4xx_gpio_child_to_parent_hwirq;
	girq->handler = handle_bad_irq;
	girq->default_type = IRQ_TYPE_NONE;

	ret = FUNC6(dev, &g->gc, g);
	if (ret) {
		FUNC4(dev, "failed to add SoC gpiochip\n");
		return ret;
	}

	FUNC17(pdev, g);
	FUNC5(dev, "IXP4 GPIO registered\n");

	return 0;
}