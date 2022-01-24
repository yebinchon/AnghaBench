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
struct etnaviv_drm_private {int /*<<< orphan*/  cmdbuf_suballoc; } ;
struct drm_device {struct etnaviv_drm_private* dev_private; } ;
struct device {int /*<<< orphan*/ * dma_parms; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct device*,struct drm_device*) ; 
 struct drm_device* FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct etnaviv_drm_private*) ; 

__attribute__((used)) static void FUNC6(struct device *dev)
{
	struct drm_device *drm = FUNC1(dev);
	struct etnaviv_drm_private *priv = drm->dev_private;

	FUNC3(drm);

	FUNC0(dev, drm);

	dev->dma_parms = NULL;

	FUNC4(priv->cmdbuf_suballoc);

	drm->dev_private = NULL;
	FUNC5(priv);

	FUNC2(drm);
}