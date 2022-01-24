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
struct TYPE_3__ {scalar_t__ low_vswing; } ;
struct TYPE_4__ {TYPE_1__ edp; } ;
struct drm_i915_private {TYPE_2__ vbt; } ;
struct ddi_buf_trans {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct ddi_buf_trans const*) ; 
 scalar_t__ FUNC1 (struct drm_i915_private*) ; 
 scalar_t__ FUNC2 (struct drm_i915_private*) ; 
 scalar_t__ FUNC3 (struct drm_i915_private*) ; 
 scalar_t__ FUNC4 (struct drm_i915_private*) ; 
 scalar_t__ FUNC5 (struct drm_i915_private*) ; 
 scalar_t__ FUNC6 (struct drm_i915_private*) ; 
 scalar_t__ FUNC7 (struct drm_i915_private*) ; 
 scalar_t__ FUNC8 (struct drm_i915_private*) ; 
 struct ddi_buf_trans const* FUNC9 (struct drm_i915_private*,int*) ; 
 struct ddi_buf_trans const* skl_ddi_translations_edp ; 
 struct ddi_buf_trans const* FUNC10 (struct drm_i915_private*,int*) ; 
 struct ddi_buf_trans const* skl_u_ddi_translations_edp ; 
 struct ddi_buf_trans const* skl_y_ddi_translations_edp ; 

__attribute__((used)) static const struct ddi_buf_trans *
FUNC11(struct drm_i915_private *dev_priv, int *n_entries)
{
	if (dev_priv->vbt.edp.low_vswing) {
		if (FUNC8(dev_priv) || FUNC6(dev_priv) ||
		    FUNC2(dev_priv)) {
			*n_entries = FUNC0(skl_y_ddi_translations_edp);
			return skl_y_ddi_translations_edp;
		} else if (FUNC7(dev_priv) || FUNC5(dev_priv) ||
			   FUNC1(dev_priv)) {
			*n_entries = FUNC0(skl_u_ddi_translations_edp);
			return skl_u_ddi_translations_edp;
		} else {
			*n_entries = FUNC0(skl_ddi_translations_edp);
			return skl_ddi_translations_edp;
		}
	}

	if (FUNC4(dev_priv) || FUNC3(dev_priv))
		return FUNC9(dev_priv, n_entries);
	else
		return FUNC10(dev_priv, n_entries);
}