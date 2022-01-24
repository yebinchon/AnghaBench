#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct platform_device {int /*<<< orphan*/  dev; } ;
struct omap_drm_private {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int ENOMEM ; 
 int EPROBE_DEFER ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct omap_drm_private*) ; 
 struct omap_drm_private* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct omap_drm_private*,int /*<<< orphan*/ *) ; 
 int FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (struct platform_device*,struct omap_drm_private*) ; 

__attribute__((used)) static int FUNC8(struct platform_device *pdev)
{
	struct omap_drm_private *priv;
	int ret;

	if (FUNC6() == false)
		return -EPROBE_DEFER;

	ret = FUNC2(&pdev->dev, FUNC0(32));
	if (ret) {
		FUNC1(&pdev->dev, "Failed to set the DMA mask\n");
		return ret;
	}

	/* Allocate and initialize the driver private structure. */
	priv = FUNC4(sizeof(*priv), GFP_KERNEL);
	if (!priv)
		return -ENOMEM;

	FUNC7(pdev, priv);

	ret = FUNC5(priv, &pdev->dev);
	if (ret < 0)
		FUNC3(priv);

	return ret;
}