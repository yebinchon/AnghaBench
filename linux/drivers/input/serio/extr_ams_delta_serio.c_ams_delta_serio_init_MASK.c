#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_6__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {TYPE_2__* parent; } ;
struct TYPE_8__ {int /*<<< orphan*/  type; } ;
struct serio {int /*<<< orphan*/  name; TYPE_6__ dev; struct ams_delta_serio* port_data; int /*<<< orphan*/  phys; int /*<<< orphan*/  close; int /*<<< orphan*/  open; TYPE_1__ id; } ;
struct TYPE_9__ {int /*<<< orphan*/  platform_data; } ;
struct platform_device {TYPE_2__ dev; } ;
struct ams_delta_serio {struct serio* serio; int /*<<< orphan*/  vcc; int /*<<< orphan*/  fiq_buffer; } ;

/* Variables and functions */
 int /*<<< orphan*/  DRIVER_NAME ; 
 int EINVAL ; 
 int ENODEV ; 
 int ENOMEM ; 
 int ENXIO ; 
 int EPROBE_DEFER ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IRQ_TYPE_EDGE_RISING ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SERIO_8042 ; 
 int /*<<< orphan*/  ams_delta_serio_close ; 
 int /*<<< orphan*/  ams_delta_serio_interrupt ; 
 int /*<<< orphan*/  ams_delta_serio_open ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_6__*,char*,int /*<<< orphan*/ ) ; 
 char* FUNC4 (TYPE_2__*) ; 
 struct ams_delta_serio* FUNC5 (TYPE_2__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,char*) ; 
 int FUNC7 (TYPE_2__*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ams_delta_serio*) ; 
 struct serio* FUNC8 (int,int /*<<< orphan*/ ) ; 
 int FUNC9 (struct platform_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct platform_device*,struct ams_delta_serio*) ; 
 int /*<<< orphan*/  FUNC11 (struct serio*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static int FUNC13(struct platform_device *pdev)
{
	struct ams_delta_serio *priv;
	struct serio *serio;
	int irq, err;

	priv = FUNC5(&pdev->dev, sizeof(*priv), GFP_KERNEL);
	if (!priv)
		return -ENOMEM;

	priv->fiq_buffer = pdev->dev.platform_data;
	if (!priv->fiq_buffer)
		return -EINVAL;

	priv->vcc = FUNC6(&pdev->dev, "vcc");
	if (FUNC0(priv->vcc)) {
		err = FUNC1(priv->vcc);
		FUNC2(&pdev->dev, "regulator request failed (%d)\n", err);
		/*
		 * When running on a non-dt platform and requested regulator
		 * is not available, devm_regulator_get() never returns
		 * -EPROBE_DEFER as it is not able to justify if the regulator
		 * may still appear later.  On the other hand, the board can
		 * still set full constriants flag at late_initcall in order
		 * to instruct devm_regulator_get() to returnn a dummy one
		 * if sufficient.  Hence, if we get -ENODEV here, let's convert
		 * it to -EPROBE_DEFER and wait for the board to decide or
		 * let Deferred Probe infrastructure handle this error.
		 */
		if (err == -ENODEV)
			err = -EPROBE_DEFER;
		return err;
	}

	irq = FUNC9(pdev, 0);
	if (irq < 0)
		return -ENXIO;

	err = FUNC7(&pdev->dev, irq, ams_delta_serio_interrupt,
			       IRQ_TYPE_EDGE_RISING, DRIVER_NAME, priv);
	if (err < 0) {
		FUNC2(&pdev->dev, "IRQ request failed (%d)\n", err);
		return err;
	}

	serio = FUNC8(sizeof(*serio), GFP_KERNEL);
	if (!serio)
		return -ENOMEM;

	priv->serio = serio;

	serio->id.type = SERIO_8042;
	serio->open = ams_delta_serio_open;
	serio->close = ams_delta_serio_close;
	FUNC12(serio->name, "AMS DELTA keyboard adapter", sizeof(serio->name));
	FUNC12(serio->phys, FUNC4(&pdev->dev), sizeof(serio->phys));
	serio->dev.parent = &pdev->dev;
	serio->port_data = priv;

	FUNC11(serio);

	FUNC10(pdev, priv);

	FUNC3(&serio->dev, "%s\n", serio->name);

	return 0;
}