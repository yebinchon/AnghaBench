#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct mtk_drm_private {TYPE_1__* dma_dev; scalar_t__ dma_parms_allocated; } ;
struct drm_device {int /*<<< orphan*/  dev; struct mtk_drm_private* dev_private; } ;
struct TYPE_2__ {int /*<<< orphan*/ * dma_parms; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct drm_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_device*) ; 

__attribute__((used)) static void FUNC4(struct drm_device *drm)
{
	struct mtk_drm_private *private = drm->dev_private;

	FUNC2(drm);
	FUNC1(drm);

	if (private->dma_parms_allocated)
		private->dma_dev->dma_parms = NULL;

	FUNC0(drm->dev, drm);
	FUNC3(drm);
}