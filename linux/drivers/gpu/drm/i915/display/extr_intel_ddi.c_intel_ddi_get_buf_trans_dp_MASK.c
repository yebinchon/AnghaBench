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
struct drm_i915_private {int dummy; } ;
struct ddi_buf_trans {int dummy; } ;
typedef  enum port { ____Placeholder_port } port ;

/* Variables and functions */
 int FUNC0 (struct ddi_buf_trans const*) ; 
 scalar_t__ FUNC1 (struct drm_i915_private*) ; 
 scalar_t__ FUNC2 (struct drm_i915_private*) ; 
 scalar_t__ FUNC3 (struct drm_i915_private*) ; 
 scalar_t__ FUNC4 (struct drm_i915_private*) ; 
 scalar_t__ FUNC5 (struct drm_i915_private*) ; 
 struct ddi_buf_trans const* bdw_ddi_translations_dp ; 
 struct ddi_buf_trans const* hsw_ddi_translations_dp ; 
 struct ddi_buf_trans* FUNC6 (struct drm_i915_private*,int*) ; 
 int FUNC7 (int,int) ; 
 struct ddi_buf_trans* FUNC8 (struct drm_i915_private*,int*) ; 

__attribute__((used)) static const struct ddi_buf_trans *
FUNC9(struct drm_i915_private *dev_priv,
			   enum port port, int *n_entries)
{
	if (FUNC4(dev_priv) || FUNC2(dev_priv)) {
		const struct ddi_buf_trans *ddi_translations =
			FUNC6(dev_priv, n_entries);
		*n_entries = FUNC7(port, *n_entries);
		return ddi_translations;
	} else if (FUNC5(dev_priv)) {
		const struct ddi_buf_trans *ddi_translations =
			FUNC8(dev_priv, n_entries);
		*n_entries = FUNC7(port, *n_entries);
		return ddi_translations;
	} else if (FUNC1(dev_priv)) {
		*n_entries = FUNC0(bdw_ddi_translations_dp);
		return  bdw_ddi_translations_dp;
	} else if (FUNC3(dev_priv)) {
		*n_entries = FUNC0(hsw_ddi_translations_dp);
		return hsw_ddi_translations_dp;
	}

	*n_entries = 0;
	return NULL;
}