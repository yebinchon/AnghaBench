#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_6__ {int /*<<< orphan*/  of_node; } ;
struct platform_device {TYPE_3__ dev; } ;
struct TYPE_4__ {int ngpio; int /*<<< orphan*/  set; int /*<<< orphan*/  direction_output; } ;
struct TYPE_5__ {int /*<<< orphan*/  save_regs; TYPE_1__ gc; } ;
struct ltq_mm {TYPE_2__ mmchip; int /*<<< orphan*/  shadow; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 struct ltq_mm* FUNC0 (TYPE_3__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ltq_mm_dir_out ; 
 int /*<<< orphan*/  ltq_mm_save_regs ; 
 int /*<<< orphan*/  ltq_mm_set ; 
 int FUNC1 (int /*<<< orphan*/ ,TYPE_2__*,struct ltq_mm*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct platform_device*,struct ltq_mm*) ; 

__attribute__((used)) static int FUNC4(struct platform_device *pdev)
{
	struct ltq_mm *chip;
	u32 shadow;

	chip = FUNC0(&pdev->dev, sizeof(*chip), GFP_KERNEL);
	if (!chip)
		return -ENOMEM;

	FUNC3(pdev, chip);

	chip->mmchip.gc.ngpio = 16;
	chip->mmchip.gc.direction_output = ltq_mm_dir_out;
	chip->mmchip.gc.set = ltq_mm_set;
	chip->mmchip.save_regs = ltq_mm_save_regs;

	/* store the shadow value if one was passed by the devicetree */
	if (!FUNC2(pdev->dev.of_node, "lantiq,shadow", &shadow))
		chip->shadow = shadow;

	return FUNC1(pdev->dev.of_node, &chip->mmchip, chip);
}