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
struct TYPE_3__ {int /*<<< orphan*/ * deassert_seq; int /*<<< orphan*/ * config; int /*<<< orphan*/ * pps; int /*<<< orphan*/ * data; } ;
struct TYPE_4__ {TYPE_1__ dsi; int /*<<< orphan*/ * lfp_lvds_vbt_mode; int /*<<< orphan*/ * sdvo_lvds_vbt_mode; scalar_t__ child_dev_num; int /*<<< orphan*/ * child_dev; } ;
struct drm_i915_private {TYPE_2__ vbt; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 

void FUNC1(struct drm_i915_private *dev_priv)
{
	FUNC0(dev_priv->vbt.child_dev);
	dev_priv->vbt.child_dev = NULL;
	dev_priv->vbt.child_dev_num = 0;
	FUNC0(dev_priv->vbt.sdvo_lvds_vbt_mode);
	dev_priv->vbt.sdvo_lvds_vbt_mode = NULL;
	FUNC0(dev_priv->vbt.lfp_lvds_vbt_mode);
	dev_priv->vbt.lfp_lvds_vbt_mode = NULL;
	FUNC0(dev_priv->vbt.dsi.data);
	dev_priv->vbt.dsi.data = NULL;
	FUNC0(dev_priv->vbt.dsi.pps);
	dev_priv->vbt.dsi.pps = NULL;
	FUNC0(dev_priv->vbt.dsi.config);
	dev_priv->vbt.dsi.config = NULL;
	FUNC0(dev_priv->vbt.dsi.deassert_seq);
	dev_priv->vbt.dsi.deassert_seq = NULL;
}