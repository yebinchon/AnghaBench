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
struct serio {TYPE_2__ dev; struct ps2if* port_data; int /*<<< orphan*/  phys; int /*<<< orphan*/  name; int /*<<< orphan*/  close; int /*<<< orphan*/  open; int /*<<< orphan*/  write; TYPE_1__ id; } ;
struct resource {int dummy; } ;
struct ps2if {struct serio* io; int /*<<< orphan*/  base; } ;
struct platform_device {int /*<<< orphan*/  dev; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int ENOMEM ; 
 int ENXIO ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SERIO_8042 ; 
 int /*<<< orphan*/  altera_ps2_close ; 
 int /*<<< orphan*/  altera_ps2_open ; 
 int /*<<< orphan*/  altera_ps2_rxint ; 
 int /*<<< orphan*/  altera_ps2_write ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,struct resource*) ; 
 struct ps2if* FUNC6 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ps2if*) ; 
 struct serio* FUNC8 (int,int /*<<< orphan*/ ) ; 
 int FUNC9 (struct platform_device*,int /*<<< orphan*/ ) ; 
 struct resource* FUNC10 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct platform_device*,struct ps2if*) ; 
 int /*<<< orphan*/  FUNC12 (struct serio*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC14(struct platform_device *pdev)
{
	struct ps2if *ps2if;
	struct resource *res;
	struct serio *serio;
	int error, irq;

	ps2if = FUNC6(&pdev->dev, sizeof(struct ps2if), GFP_KERNEL);
	if (!ps2if)
		return -ENOMEM;

	res = FUNC10(pdev, IORESOURCE_MEM, 0);
	ps2if->base = FUNC5(&pdev->dev, res);
	if (FUNC0(ps2if->base))
		return FUNC1(ps2if->base);

	irq = FUNC9(pdev, 0);
	if (irq < 0)
		return -ENXIO;

	error = FUNC7(&pdev->dev, irq, altera_ps2_rxint, 0,
				 pdev->name, ps2if);
	if (error) {
		FUNC2(&pdev->dev, "could not request IRQ %d\n", irq);
		return error;
	}

	serio = FUNC8(sizeof(struct serio), GFP_KERNEL);
	if (!serio)
		return -ENOMEM;

	serio->id.type		= SERIO_8042;
	serio->write		= altera_ps2_write;
	serio->open		= altera_ps2_open;
	serio->close		= altera_ps2_close;
	FUNC13(serio->name, FUNC4(&pdev->dev), sizeof(serio->name));
	FUNC13(serio->phys, FUNC4(&pdev->dev), sizeof(serio->phys));
	serio->port_data	= ps2if;
	serio->dev.parent	= &pdev->dev;
	ps2if->io		= serio;

	FUNC3(&pdev->dev, "base %p, irq %d\n", ps2if->base, irq);

	FUNC12(ps2if->io);
	FUNC11(pdev, ps2if);

	return 0;
}