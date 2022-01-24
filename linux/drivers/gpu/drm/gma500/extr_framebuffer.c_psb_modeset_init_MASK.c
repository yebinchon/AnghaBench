#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct psb_intel_mode_device {int dummy; } ;
struct drm_psb_private {int num_pipe; int modeset; TYPE_2__* ops; struct psb_intel_mode_device mode_dev; } ;
struct TYPE_3__ {int max_width; int max_height; int /*<<< orphan*/  fb_base; int /*<<< orphan*/ * funcs; scalar_t__ min_height; scalar_t__ min_width; } ;
struct drm_device {TYPE_1__ mode_config; int /*<<< orphan*/  pdev; struct drm_psb_private* dev_private; } ;
struct TYPE_4__ {int /*<<< orphan*/  (* errata ) (struct drm_device*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  PSB_BSM ; 
 int /*<<< orphan*/  FUNC0 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_device*,int,struct psb_intel_mode_device*) ; 
 int /*<<< orphan*/  psb_mode_funcs ; 
 int /*<<< orphan*/  FUNC3 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_device*) ; 

void FUNC5(struct drm_device *dev)
{
	struct drm_psb_private *dev_priv = dev->dev_private;
	struct psb_intel_mode_device *mode_dev = &dev_priv->mode_dev;
	int i;

	FUNC0(dev);

	dev->mode_config.min_width = 0;
	dev->mode_config.min_height = 0;

	dev->mode_config.funcs = &psb_mode_funcs;

	/* set memory base */
	/* Oaktrail and Poulsbo should use BAR 2*/
	FUNC1(dev->pdev, PSB_BSM, (u32 *)
					&(dev->mode_config.fb_base));

	/* num pipes is 2 for PSB but 1 for Mrst */
	for (i = 0; i < dev_priv->num_pipe; i++)
		FUNC2(dev, i, mode_dev);

	dev->mode_config.max_width = 4096;
	dev->mode_config.max_height = 4096;

	FUNC3(dev);

	if (dev_priv->ops->errata)
	        dev_priv->ops->errata(dev);

        dev_priv->modeset = true;
}