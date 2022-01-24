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
struct tve200_drm_dev_private {int /*<<< orphan*/  pclk; int /*<<< orphan*/  bridge; scalar_t__ panel; } ;
struct platform_device {int dummy; } ;
struct drm_device {struct tve200_drm_dev_private* dev_private; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 struct drm_device* FUNC5 (struct platform_device*) ; 

__attribute__((used)) static int FUNC6(struct platform_device *pdev)
{
	struct drm_device *drm = FUNC5(pdev);
	struct tve200_drm_dev_private *priv = drm->dev_private;

	FUNC2(drm);
	if (priv->panel)
		FUNC4(priv->bridge);
	FUNC3(drm);
	FUNC0(priv->pclk);
	FUNC1(drm);

	return 0;
}