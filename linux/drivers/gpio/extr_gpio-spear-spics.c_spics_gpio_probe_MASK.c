#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int base; int /*<<< orphan*/  owner; TYPE_1__* parent; int /*<<< orphan*/  label; int /*<<< orphan*/  set; int /*<<< orphan*/  get; int /*<<< orphan*/  direction_output; int /*<<< orphan*/  direction_input; int /*<<< orphan*/  free; int /*<<< orphan*/  request; int /*<<< orphan*/  ngpio; } ;
struct spear_spics {int last_off; TYPE_3__ chip; int /*<<< orphan*/  cs_enable_shift; int /*<<< orphan*/  cs_enable_mask; int /*<<< orphan*/  cs_value_bit; int /*<<< orphan*/  sw_enable_bit; int /*<<< orphan*/  perip_cfg; int /*<<< orphan*/  base; } ;
struct TYPE_7__ {struct device_node* of_node; } ;
struct platform_device {TYPE_1__ dev; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NUM_OF_GPIO ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int FUNC5 (TYPE_1__*,TYPE_3__*,struct spear_spics*) ; 
 struct spear_spics* FUNC6 (TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct platform_device*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (struct device_node*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct platform_device*,struct spear_spics*) ; 
 int /*<<< orphan*/  spics_direction_input ; 
 int /*<<< orphan*/  spics_direction_output ; 
 int /*<<< orphan*/  spics_free ; 
 int /*<<< orphan*/  spics_get_value ; 
 int /*<<< orphan*/  spics_request ; 
 int /*<<< orphan*/  spics_set_value ; 

__attribute__((used)) static int FUNC10(struct platform_device *pdev)
{
	struct device_node *np = pdev->dev.of_node;
	struct spear_spics *spics;
	int ret;

	spics = FUNC6(&pdev->dev, sizeof(*spics), GFP_KERNEL);
	if (!spics)
		return -ENOMEM;

	spics->base = FUNC7(pdev, 0);
	if (FUNC0(spics->base))
		return FUNC1(spics->base);

	if (FUNC8(np, "st-spics,peripcfg-reg",
				&spics->perip_cfg))
		goto err_dt_data;
	if (FUNC8(np, "st-spics,sw-enable-bit",
				&spics->sw_enable_bit))
		goto err_dt_data;
	if (FUNC8(np, "st-spics,cs-value-bit",
				&spics->cs_value_bit))
		goto err_dt_data;
	if (FUNC8(np, "st-spics,cs-enable-mask",
				&spics->cs_enable_mask))
		goto err_dt_data;
	if (FUNC8(np, "st-spics,cs-enable-shift",
				&spics->cs_enable_shift))
		goto err_dt_data;

	FUNC9(pdev, spics);

	spics->chip.ngpio = NUM_OF_GPIO;
	spics->chip.base = -1;
	spics->chip.request = spics_request;
	spics->chip.free = spics_free;
	spics->chip.direction_input = spics_direction_input;
	spics->chip.direction_output = spics_direction_output;
	spics->chip.get = spics_get_value;
	spics->chip.set = spics_set_value;
	spics->chip.label = FUNC4(&pdev->dev);
	spics->chip.parent = &pdev->dev;
	spics->chip.owner = THIS_MODULE;
	spics->last_off = -1;

	ret = FUNC5(&pdev->dev, &spics->chip, spics);
	if (ret) {
		FUNC2(&pdev->dev, "unable to add gpio chip\n");
		return ret;
	}

	FUNC3(&pdev->dev, "spear spics registered\n");
	return 0;

err_dt_data:
	FUNC2(&pdev->dev, "DT probe failed\n");
	return -EINVAL;
}