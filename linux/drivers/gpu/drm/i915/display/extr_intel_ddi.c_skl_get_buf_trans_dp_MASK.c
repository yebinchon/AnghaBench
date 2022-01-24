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

/* Variables and functions */
 int FUNC0 (struct ddi_buf_trans const*) ; 
 scalar_t__ FUNC1 (struct drm_i915_private*) ; 
 scalar_t__ FUNC2 (struct drm_i915_private*) ; 
 struct ddi_buf_trans const* skl_ddi_translations_dp ; 
 struct ddi_buf_trans const* skl_u_ddi_translations_dp ; 
 struct ddi_buf_trans const* skl_y_ddi_translations_dp ; 

__attribute__((used)) static const struct ddi_buf_trans *
FUNC3(struct drm_i915_private *dev_priv, int *n_entries)
{
	if (FUNC2(dev_priv)) {
		*n_entries = FUNC0(skl_y_ddi_translations_dp);
		return skl_y_ddi_translations_dp;
	} else if (FUNC1(dev_priv)) {
		*n_entries = FUNC0(skl_u_ddi_translations_dp);
		return skl_u_ddi_translations_dp;
	} else {
		*n_entries = FUNC0(skl_ddi_translations_dp);
		return skl_ddi_translations_dp;
	}
}