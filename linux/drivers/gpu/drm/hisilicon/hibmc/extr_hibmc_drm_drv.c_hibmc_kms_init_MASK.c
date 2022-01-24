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
struct hibmc_drm_private {int mode_config_initialized; TYPE_2__* dev; int /*<<< orphan*/  fb_base; } ;
struct TYPE_3__ {int max_width; int max_height; int preferred_depth; void* funcs; scalar_t__ prefer_shadow; int /*<<< orphan*/  fb_base; scalar_t__ min_height; scalar_t__ min_width; } ;
struct TYPE_4__ {TYPE_1__ mode_config; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int FUNC2 (struct hibmc_drm_private*) ; 
 int /*<<< orphan*/  hibmc_mode_funcs ; 
 int FUNC3 (struct hibmc_drm_private*) ; 

__attribute__((used)) static int FUNC4(struct hibmc_drm_private *priv)
{
	int ret;

	FUNC1(priv->dev);
	priv->mode_config_initialized = true;

	priv->dev->mode_config.min_width = 0;
	priv->dev->mode_config.min_height = 0;
	priv->dev->mode_config.max_width = 1920;
	priv->dev->mode_config.max_height = 1440;

	priv->dev->mode_config.fb_base = priv->fb_base;
	priv->dev->mode_config.preferred_depth = 24;
	priv->dev->mode_config.prefer_shadow = 0;

	priv->dev->mode_config.funcs = (void *)&hibmc_mode_funcs;

	ret = FUNC2(priv);
	if (ret) {
		FUNC0("failed to init de: %d\n", ret);
		return ret;
	}

	ret = FUNC3(priv);
	if (ret) {
		FUNC0("failed to init vdac: %d\n", ret);
		return ret;
	}

	return 0;
}