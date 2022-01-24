#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct resource {int dummy; } ;
struct TYPE_5__ {int /*<<< orphan*/  of_node; } ;
struct platform_device {TYPE_1__ dev; } ;
struct mvebu_icu {scalar_t__ base; TYPE_1__* dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int ICU_GROUP_SHIFT ; 
 int ICU_GRP_NSR ; 
 int ICU_GRP_SEI ; 
 scalar_t__ FUNC0 (int) ; 
 int ICU_MAX_IRQS ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,char*) ; 
 scalar_t__ FUNC4 (TYPE_1__*,struct resource*) ; 
 struct mvebu_icu* FUNC5 (TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 int FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  legacy_bindings ; 
 int FUNC7 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 struct resource* FUNC9 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct platform_device*,struct mvebu_icu*) ; 
 int FUNC11 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int,scalar_t__) ; 

__attribute__((used)) static int FUNC15(struct platform_device *pdev)
{
	struct mvebu_icu *icu;
	struct resource *res;
	int i;

	icu = FUNC5(&pdev->dev, sizeof(struct mvebu_icu),
			   GFP_KERNEL);
	if (!icu)
		return -ENOMEM;

	icu->dev = &pdev->dev;

	res = FUNC9(pdev, IORESOURCE_MEM, 0);
	icu->base = FUNC4(&pdev->dev, res);
	if (FUNC1(icu->base)) {
		FUNC3(&pdev->dev, "Failed to map icu base address.\n");
		return FUNC2(icu->base);
	}

	/*
	 * Legacy bindings: ICU is one node with one MSI parent: force manually
	 *                  the probe of the NSR interrupts side.
	 * New bindings: ICU node has children, one per interrupt controller
	 *               having its own MSI parent: call platform_populate().
	 * All ICU instances should use the same bindings.
	 */
	if (!FUNC8(pdev->dev.of_node))
		FUNC12(&legacy_bindings);

	/*
	 * Clean all ICU interrupts of type NSR and SEI, required to
	 * avoid unpredictable SPI assignments done by firmware.
	 */
	for (i = 0 ; i < ICU_MAX_IRQS ; i++) {
		u32 icu_int, icu_grp;

		icu_int = FUNC11(icu->base + FUNC0(i));
		icu_grp = icu_int >> ICU_GROUP_SHIFT;

		if (icu_grp == ICU_GRP_NSR ||
		    (icu_grp == ICU_GRP_SEI &&
		     !FUNC13(&legacy_bindings)))
			FUNC14(0x0, icu->base + FUNC0(i));
	}

	FUNC10(pdev, icu);

	if (FUNC13(&legacy_bindings))
		return FUNC7(pdev);
	else
		return FUNC6(&pdev->dev);
}