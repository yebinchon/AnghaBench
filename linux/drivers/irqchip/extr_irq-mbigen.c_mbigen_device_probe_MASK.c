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
struct resource {int /*<<< orphan*/  start; } ;
struct TYPE_5__ {scalar_t__ of_node; } ;
struct platform_device {TYPE_1__ dev; } ;
struct mbigen_device {int /*<<< orphan*/  base; struct platform_device* pdev; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  CONFIG_OF ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct mbigen_device* FUNC4 (TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct platform_device*,struct mbigen_device*) ; 
 int FUNC6 (struct platform_device*,struct mbigen_device*) ; 
 struct resource* FUNC7 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct platform_device*,struct mbigen_device*) ; 
 int /*<<< orphan*/  FUNC9 (struct resource*) ; 

__attribute__((used)) static int FUNC10(struct platform_device *pdev)
{
	struct mbigen_device *mgn_chip;
	struct resource *res;
	int err;

	mgn_chip = FUNC4(&pdev->dev, sizeof(*mgn_chip), GFP_KERNEL);
	if (!mgn_chip)
		return -ENOMEM;

	mgn_chip->pdev = pdev;

	res = FUNC7(pdev, IORESOURCE_MEM, 0);
	if (!res)
		return -EINVAL;

	mgn_chip->base = FUNC3(&pdev->dev, res->start,
				      FUNC9(res));
	if (!mgn_chip->base) {
		FUNC2(&pdev->dev, "failed to ioremap %pR\n", res);
		return -ENOMEM;
	}

	if (FUNC1(CONFIG_OF) && pdev->dev.of_node)
		err = FUNC6(pdev, mgn_chip);
	else if (FUNC0(&pdev->dev))
		err = FUNC5(pdev, mgn_chip);
	else
		err = -EINVAL;

	if (err) {
		FUNC2(&pdev->dev, "Failed to create mbi-gen irqdomain\n");
		return err;
	}

	FUNC8(pdev, mgn_chip);
	return 0;
}