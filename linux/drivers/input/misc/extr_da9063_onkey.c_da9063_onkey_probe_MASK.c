#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_5__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_14__ {int /*<<< orphan*/  of_node; int /*<<< orphan*/  parent; } ;
struct platform_device {TYPE_5__ dev; } ;
struct of_device_id {TYPE_1__* data; } ;
struct da9063_onkey {int key_power; TYPE_3__* input; int /*<<< orphan*/  work; int /*<<< orphan*/  phys; TYPE_1__* config; int /*<<< orphan*/  regmap; TYPE_5__* dev; } ;
struct TYPE_12__ {TYPE_5__* parent; } ;
struct TYPE_13__ {char* name; TYPE_2__ dev; int /*<<< orphan*/  phys; } ;
struct TYPE_11__ {char* name; } ;

/* Variables and functions */
 int ENOMEM ; 
 int ENXIO ; 
 int /*<<< orphan*/  EV_KEY ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int IRQF_ONESHOT ; 
 int IRQF_TRIGGER_LOW ; 
 int /*<<< orphan*/  KEY_POWER ; 
 int /*<<< orphan*/  da9063_cancel_poll ; 
 int /*<<< orphan*/  da9063_compatible_reg_id_table ; 
 int /*<<< orphan*/  da9063_onkey_irq_handler ; 
 int /*<<< orphan*/  da9063_poll_on ; 
 int /*<<< orphan*/  FUNC1 (TYPE_5__*,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC3 (TYPE_5__*,int /*<<< orphan*/ ,struct da9063_onkey*) ; 
 TYPE_3__* FUNC4 (TYPE_5__*) ; 
 struct da9063_onkey* FUNC5 (TYPE_5__*,int,int /*<<< orphan*/ ) ; 
 int FUNC6 (TYPE_5__*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,char*,struct da9063_onkey*) ; 
 int FUNC7 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct of_device_id* FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*) ; 
 int FUNC11 (struct platform_device*,char*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int,char*,char*) ; 

__attribute__((used)) static int FUNC13(struct platform_device *pdev)
{
	struct da9063_onkey *onkey;
	const struct of_device_id *match;
	int irq;
	int error;

	match = FUNC9(da9063_compatible_reg_id_table,
			      pdev->dev.of_node);
	if (!match)
		return -ENXIO;

	onkey = FUNC5(&pdev->dev, sizeof(struct da9063_onkey),
			     GFP_KERNEL);
	if (!onkey) {
		FUNC1(&pdev->dev, "Failed to allocate memory.\n");
		return -ENOMEM;
	}

	onkey->config = match->data;
	onkey->dev = &pdev->dev;

	onkey->regmap = FUNC2(pdev->dev.parent, NULL);
	if (!onkey->regmap) {
		FUNC1(&pdev->dev, "Parent regmap unavailable.\n");
		return -ENXIO;
	}

	onkey->key_power = !FUNC10(pdev->dev.of_node,
						  "dlg,disable-key-power");

	onkey->input = FUNC4(&pdev->dev);
	if (!onkey->input) {
		FUNC1(&pdev->dev, "Failed to allocated input device.\n");
		return -ENOMEM;
	}

	onkey->input->name = onkey->config->name;
	FUNC12(onkey->phys, sizeof(onkey->phys), "%s/input0",
		 onkey->config->name);
	onkey->input->phys = onkey->phys;
	onkey->input->dev.parent = &pdev->dev;

	FUNC8(onkey->input, EV_KEY, KEY_POWER);

	FUNC0(&onkey->work, da9063_poll_on);

	error = FUNC3(&pdev->dev, da9063_cancel_poll, onkey);
	if (error) {
		FUNC1(&pdev->dev,
			"Failed to add cancel poll action: %d\n",
			error);
		return error;
	}

	irq = FUNC11(pdev, "ONKEY");
	if (irq < 0)
		return irq;

	error = FUNC6(&pdev->dev, irq,
					  NULL, da9063_onkey_irq_handler,
					  IRQF_TRIGGER_LOW | IRQF_ONESHOT,
					  "ONKEY", onkey);
	if (error) {
		FUNC1(&pdev->dev,
			"Failed to request IRQ %d: %d\n", irq, error);
		return error;
	}

	error = FUNC7(onkey->input);
	if (error) {
		FUNC1(&pdev->dev,
			"Failed to register input device: %d\n", error);
		return error;
	}

	return 0;
}