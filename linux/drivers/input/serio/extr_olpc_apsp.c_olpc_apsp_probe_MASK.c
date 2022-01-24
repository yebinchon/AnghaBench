#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/ * parent; } ;
struct TYPE_3__ {int /*<<< orphan*/  type; } ;
struct serio {int /*<<< orphan*/  phys; int /*<<< orphan*/  name; TYPE_2__ dev; struct olpc_apsp* port_data; void* close; void* open; void* write; TYPE_1__ id; } ;
struct resource {int dummy; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;
struct olpc_apsp {scalar_t__ irq; int /*<<< orphan*/ * dev; struct serio* padio; struct serio* kbio; int /*<<< orphan*/  base; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SERIO_8042 ; 
 int /*<<< orphan*/  SERIO_8042_XL ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,struct resource*) ; 
 struct olpc_apsp* FUNC6 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 struct serio* FUNC7 (int,int /*<<< orphan*/ ) ; 
 void* olpc_apsp_close ; 
 void* olpc_apsp_open ; 
 int /*<<< orphan*/  olpc_apsp_rx ; 
 void* olpc_apsp_write ; 
 scalar_t__ FUNC8 (struct platform_device*,int /*<<< orphan*/ ) ; 
 struct resource* FUNC9 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct platform_device*,struct olpc_apsp*) ; 
 int FUNC11 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,struct olpc_apsp*) ; 
 int /*<<< orphan*/  FUNC12 (struct serio*) ; 
 int /*<<< orphan*/  FUNC13 (struct serio*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static int FUNC15(struct platform_device *pdev)
{
	struct serio *kb_serio, *pad_serio;
	struct olpc_apsp *priv;
	struct resource *res;
	int error;

	priv = FUNC6(&pdev->dev, sizeof(struct olpc_apsp), GFP_KERNEL);
	if (!priv)
		return -ENOMEM;

	priv->dev = &pdev->dev;

	res = FUNC9(pdev, IORESOURCE_MEM, 0);
	priv->base = FUNC5(&pdev->dev, res);
	if (FUNC0(priv->base)) {
		FUNC3(&pdev->dev, "Failed to map WTM registers\n");
		return FUNC1(priv->base);
	}

	priv->irq = FUNC8(pdev, 0);
	if (priv->irq < 0)
		return priv->irq;

	/* KEYBOARD */
	kb_serio = FUNC7(sizeof(struct serio), GFP_KERNEL);
	if (!kb_serio)
		return -ENOMEM;
	kb_serio->id.type	= SERIO_8042_XL;
	kb_serio->write		= olpc_apsp_write;
	kb_serio->open		= olpc_apsp_open;
	kb_serio->close		= olpc_apsp_close;
	kb_serio->port_data	= priv;
	kb_serio->dev.parent	= &pdev->dev;
	FUNC14(kb_serio->name, "sp keyboard", sizeof(kb_serio->name));
	FUNC14(kb_serio->phys, "sp/serio0", sizeof(kb_serio->phys));
	priv->kbio		= kb_serio;
	FUNC12(kb_serio);

	/* TOUCHPAD */
	pad_serio = FUNC7(sizeof(struct serio), GFP_KERNEL);
	if (!pad_serio) {
		error = -ENOMEM;
		goto err_pad;
	}
	pad_serio->id.type	= SERIO_8042;
	pad_serio->write	= olpc_apsp_write;
	pad_serio->open		= olpc_apsp_open;
	pad_serio->close	= olpc_apsp_close;
	pad_serio->port_data	= priv;
	pad_serio->dev.parent	= &pdev->dev;
	FUNC14(pad_serio->name, "sp touchpad", sizeof(pad_serio->name));
	FUNC14(pad_serio->phys, "sp/serio1", sizeof(pad_serio->phys));
	priv->padio		= pad_serio;
	FUNC12(pad_serio);

	error = FUNC11(priv->irq, olpc_apsp_rx, 0, "olpc-apsp", priv);
	if (error) {
		FUNC3(&pdev->dev, "Failed to request IRQ\n");
		goto err_irq;
	}

	FUNC4(priv->dev, 1);
	FUNC10(pdev, priv);

	FUNC2(&pdev->dev, "probed successfully.\n");
	return 0;

err_irq:
	FUNC13(pad_serio);
err_pad:
	FUNC13(kb_serio);
	return error;
}