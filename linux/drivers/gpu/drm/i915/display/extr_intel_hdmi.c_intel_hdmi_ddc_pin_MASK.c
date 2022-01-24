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
typedef  scalar_t__ u8 ;
struct TYPE_2__ {struct ddi_vbt_port_info* ddi_port_info; } ;
struct drm_i915_private {TYPE_1__ vbt; } ;
struct ddi_vbt_port_info {scalar_t__ alternate_ddc_pin; } ;
typedef  enum port { ____Placeholder_port } port ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct drm_i915_private*) ; 
 scalar_t__ FUNC2 (struct drm_i915_private*) ; 
 scalar_t__ FUNC3 (struct drm_i915_private*) ; 
 scalar_t__ FUNC4 (struct drm_i915_private*) ; 
 scalar_t__ FUNC5 (struct drm_i915_private*) ; 
 scalar_t__ FUNC6 (struct drm_i915_private*) ; 
 scalar_t__ FUNC7 (struct drm_i915_private*,int) ; 
 scalar_t__ FUNC8 (struct drm_i915_private*,int) ; 
 scalar_t__ FUNC9 (struct drm_i915_private*,int) ; 
 scalar_t__ FUNC10 (struct drm_i915_private*,int) ; 
 scalar_t__ FUNC11 (struct drm_i915_private*,int) ; 
 scalar_t__ FUNC12 (struct drm_i915_private*,int) ; 
 int /*<<< orphan*/  FUNC13 (int) ; 

__attribute__((used)) static u8 FUNC14(struct drm_i915_private *dev_priv,
			     enum port port)
{
	const struct ddi_vbt_port_info *info =
		&dev_priv->vbt.ddi_port_info[port];
	u8 ddc_pin;

	if (info->alternate_ddc_pin) {
		FUNC0("Using DDC pin 0x%x for port %c (VBT)\n",
			      info->alternate_ddc_pin, FUNC13(port));
		return info->alternate_ddc_pin;
	}

	if (FUNC3(dev_priv))
		ddc_pin = FUNC12(dev_priv, port);
	else if (FUNC4(dev_priv) || FUNC2(dev_priv))
		ddc_pin = FUNC11(dev_priv, port);
	else if (FUNC1(dev_priv))
		ddc_pin = FUNC9(dev_priv, port);
	else if (FUNC6(dev_priv))
		ddc_pin = FUNC7(dev_priv, port);
	else if (FUNC5(dev_priv))
		ddc_pin = FUNC8(dev_priv, port);
	else
		ddc_pin = FUNC10(dev_priv, port);

	FUNC0("Using DDC pin 0x%x for port %c (platform default)\n",
		      ddc_pin, FUNC13(port));

	return ddc_pin;
}