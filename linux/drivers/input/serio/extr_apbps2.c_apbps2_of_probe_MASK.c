#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_6__ ;
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct serio {int dummy; } ;
struct resource {int dummy; } ;
struct TYPE_15__ {int /*<<< orphan*/  of_node; } ;
struct platform_device {TYPE_4__ dev; } ;
struct apbps2_priv {TYPE_2__* io; TYPE_6__* regs; } ;
struct TYPE_16__ {int /*<<< orphan*/  reload; int /*<<< orphan*/  ctrl; } ;
struct TYPE_13__ {int /*<<< orphan*/  type; } ;
struct TYPE_14__ {int /*<<< orphan*/  phys; int /*<<< orphan*/  name; struct apbps2_priv* port_data; int /*<<< orphan*/  write; int /*<<< orphan*/  close; int /*<<< orphan*/  open; TYPE_1__ id; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 int /*<<< orphan*/  IRQF_SHARED ; 
 scalar_t__ FUNC0 (TYPE_6__*) ; 
 int FUNC1 (TYPE_6__*) ; 
 int /*<<< orphan*/  SERIO_8042 ; 
 int /*<<< orphan*/  apbps2_close ; 
 int /*<<< orphan*/  apbps2_idx ; 
 int /*<<< orphan*/  apbps2_isr ; 
 int /*<<< orphan*/  apbps2_open ; 
 int /*<<< orphan*/  apbps2_write ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*,char*,int,TYPE_6__*) ; 
 TYPE_6__* FUNC4 (TYPE_4__*,struct resource*) ; 
 struct apbps2_priv* FUNC5 (TYPE_4__*,int,int /*<<< orphan*/ ) ; 
 int FUNC6 (TYPE_4__*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,struct apbps2_priv*) ; 
 int /*<<< orphan*/  FUNC7 (int,int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC9 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,char*,int*) ; 
 struct resource* FUNC11 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct platform_device*,struct apbps2_priv*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static int FUNC16(struct platform_device *ofdev)
{
	struct apbps2_priv *priv;
	int irq, err;
	u32 freq_hz;
	struct resource *res;

	priv = FUNC5(&ofdev->dev, sizeof(*priv), GFP_KERNEL);
	if (!priv) {
		FUNC2(&ofdev->dev, "memory allocation failed\n");
		return -ENOMEM;
	}

	/* Find Device Address */
	res = FUNC11(ofdev, IORESOURCE_MEM, 0);
	priv->regs = FUNC4(&ofdev->dev, res);
	if (FUNC0(priv->regs))
		return FUNC1(priv->regs);

	/* Reset hardware, disable interrupt */
	FUNC7(0, &priv->regs->ctrl);

	/* IRQ */
	irq = FUNC8(ofdev->dev.of_node, 0);
	err = FUNC6(&ofdev->dev, irq, apbps2_isr,
				IRQF_SHARED, "apbps2", priv);
	if (err) {
		FUNC2(&ofdev->dev, "request IRQ%d failed\n", irq);
		return err;
	}

	/* Get core frequency */
	if (FUNC10(ofdev->dev.of_node, "freq", &freq_hz)) {
		FUNC2(&ofdev->dev, "unable to get core frequency\n");
		return -EINVAL;
	}

	/* Set reload register to core freq in kHz/10 */
	FUNC7(freq_hz / 10000, &priv->regs->reload);

	priv->io = FUNC9(sizeof(struct serio), GFP_KERNEL);
	if (!priv->io)
		return -ENOMEM;

	priv->io->id.type = SERIO_8042;
	priv->io->open = apbps2_open;
	priv->io->close = apbps2_close;
	priv->io->write = apbps2_write;
	priv->io->port_data = priv;
	FUNC15(priv->io->name, "APBPS2 PS/2", sizeof(priv->io->name));
	FUNC14(priv->io->phys, sizeof(priv->io->phys),
		 "apbps2_%d", apbps2_idx++);

	FUNC3(&ofdev->dev, "irq = %d, base = 0x%p\n", irq, priv->regs);

	FUNC13(priv->io);

	FUNC12(ofdev, priv);

	return 0;
}