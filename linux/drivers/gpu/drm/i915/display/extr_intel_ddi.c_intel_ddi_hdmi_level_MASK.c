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
struct TYPE_4__ {TYPE_1__* ddi_port_info; } ;
struct drm_i915_private {TYPE_2__ vbt; } ;
typedef  enum port { ____Placeholder_port } port ;
typedef  enum phy { ____Placeholder_phy } phy ;
struct TYPE_3__ {int hdmi_level_shift; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int HDMI_LEVEL_SHIFT_UNKNOWN ; 
 int FUNC1 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  INTEL_OUTPUT_HDMI ; 
 scalar_t__ FUNC2 (struct drm_i915_private*) ; 
 scalar_t__ FUNC3 (struct drm_i915_private*) ; 
 scalar_t__ FUNC4 (struct drm_i915_private*) ; 
 scalar_t__ FUNC5 (struct drm_i915_private*) ; 
 scalar_t__ FUNC6 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC7 (int,char*) ; 
 scalar_t__ FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (struct drm_i915_private*,int*) ; 
 int /*<<< orphan*/  FUNC10 (struct drm_i915_private*,int*) ; 
 int /*<<< orphan*/  FUNC11 (struct drm_i915_private*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  icl_mg_phy_ddi_translations ; 
 int /*<<< orphan*/  FUNC12 (struct drm_i915_private*,int*) ; 
 scalar_t__ FUNC13 (struct drm_i915_private*,int) ; 
 int FUNC14 (struct drm_i915_private*,int) ; 

__attribute__((used)) static int FUNC15(struct drm_i915_private *dev_priv, enum port port)
{
	int n_entries, level, default_entry;
	enum phy phy = FUNC14(dev_priv, port);

	level = dev_priv->vbt.ddi_port_info[port].hdmi_level_shift;

	if (FUNC1(dev_priv) >= 11) {
		if (FUNC13(dev_priv, phy))
			FUNC11(dev_priv, INTEL_OUTPUT_HDMI,
						0, &n_entries);
		else
			n_entries = FUNC0(icl_mg_phy_ddi_translations);
		default_entry = n_entries - 1;
	} else if (FUNC3(dev_priv)) {
		FUNC10(dev_priv, &n_entries);
		default_entry = n_entries - 1;
	} else if (FUNC5(dev_priv)) {
		FUNC9(dev_priv, &n_entries);
		default_entry = n_entries - 1;
	} else if (FUNC4(dev_priv)) {
		FUNC12(dev_priv, &n_entries);
		default_entry = 8;
	} else if (FUNC2(dev_priv)) {
		FUNC12(dev_priv, &n_entries);
		default_entry = 7;
	} else if (FUNC6(dev_priv)) {
		FUNC12(dev_priv, &n_entries);
		default_entry = 6;
	} else {
		FUNC7(1, "ddi translation table missing\n");
		return 0;
	}

	/* Choose a good default if VBT is badly populated */
	if (level == HDMI_LEVEL_SHIFT_UNKNOWN || level >= n_entries)
		level = default_entry;

	if (FUNC8(n_entries == 0))
		return 0;
	if (FUNC8(level >= n_entries))
		level = n_entries - 1;

	return level;
}