#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
struct TYPE_5__ {struct drm_device* dev; } ;
struct TYPE_6__ {TYPE_1__ base; } ;
struct intel_dsi {TYPE_2__ base; } ;
struct TYPE_7__ {int seq_version; } ;
struct TYPE_8__ {TYPE_3__ dsi; } ;
struct drm_i915_private {TYPE_4__ vbt; } ;
struct drm_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (struct drm_i915_private*) ; 
 scalar_t__ FUNC2 (struct drm_i915_private*) ; 
 scalar_t__ FUNC3 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_i915_private*,int,int,int) ; 
 int /*<<< orphan*/  FUNC5 (struct drm_i915_private*,int,int,int) ; 
 int /*<<< orphan*/  FUNC6 (struct drm_i915_private*,int,int,int) ; 
 struct drm_i915_private* FUNC7 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct drm_i915_private*,int,int,int) ; 

__attribute__((used)) static const u8 *FUNC9(struct intel_dsi *intel_dsi, const u8 *data)
{
	struct drm_device *dev = intel_dsi->base.base.dev;
	struct drm_i915_private *dev_priv = FUNC7(dev);
	u8 gpio_source, gpio_index = 0, gpio_number;
	bool value;

	FUNC0("\n");

	if (dev_priv->vbt.dsi.seq_version >= 3)
		gpio_index = *data++;

	gpio_number = *data++;

	/* gpio source in sequence v2 only */
	if (dev_priv->vbt.dsi.seq_version == 2)
		gpio_source = (*data >> 1) & 3;
	else
		gpio_source = 0;

	/* pull up/down */
	value = *data++ & 1;

	if (FUNC1(dev_priv) >= 11)
		FUNC6(dev_priv, gpio_source, gpio_index, value);
	else if (FUNC3(dev_priv))
		FUNC8(dev_priv, gpio_source, gpio_number, value);
	else if (FUNC2(dev_priv))
		FUNC5(dev_priv, gpio_source, gpio_number, value);
	else
		FUNC4(dev_priv, gpio_source, gpio_index, value);

	return data;
}