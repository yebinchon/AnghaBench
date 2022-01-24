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
struct resource {int dummy; } ;
struct priv {int /*<<< orphan*/  bus; int /*<<< orphan*/  base; TYPE_1__* mem; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;
struct TYPE_3__ {int /*<<< orphan*/  start; } ;

/* Variables and functions */
 int EBUSY ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  KBUILD_MODNAME ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct priv* FUNC6 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 struct resource* FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC11 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct platform_device*,struct priv*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC14(struct platform_device *pdev)
{
	struct resource *res;
	struct priv *priv;
	int ret = 0;

	priv = FUNC6(&pdev->dev, sizeof(*priv), GFP_KERNEL);
	if (!priv)
		return -ENOMEM;

	priv->mem = FUNC11(pdev, IORESOURCE_MEM, 0);
	if (!priv->mem) {
		FUNC4(&pdev->dev, "No Memory resource\n");
		return -ENODEV;
	}

	res = FUNC7(&pdev->dev, priv->mem->start,
				      FUNC13(priv->mem),
				      KBUILD_MODNAME);
	if (!res) {
		FUNC4(&pdev->dev, "Failed to request IO memory\n");
		return -EBUSY;
	}

	priv->base = FUNC5(&pdev->dev, priv->mem->start,
				  FUNC13(priv->mem));
	if (!priv->base) {
		FUNC4(&pdev->dev, "Cannot ioremap\n");
		return -ENOMEM;
	}

	FUNC12(pdev, priv);

	priv->bus = FUNC8(&pdev->dev);
	if (FUNC0(priv->bus))
		return FUNC1(priv->bus);

	ret = FUNC2(priv->bus, priv->mem->start, priv->base);
	if (ret < 0) {
		FUNC10(priv->bus);
		return ret;
	}

	FUNC3(&pdev->dev, "Found %d cells\n", ret);

	FUNC9(priv->bus);

	return 0;

}