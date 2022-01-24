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
struct TYPE_2__ {int allowed_dc_mask; scalar_t__ dmc_payload; } ;
struct drm_i915_private {TYPE_1__ csr; } ;

/* Variables and functions */
 int DC_STATE_EN_UPTO_DC5 ; 
 int DC_STATE_EN_UPTO_DC6 ; 
 int FUNC0 (struct drm_i915_private*) ; 
 scalar_t__ FUNC1 (struct drm_i915_private*) ; 
 scalar_t__ FUNC2 (struct drm_i915_private*) ; 
 scalar_t__ FUNC3 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC5 (struct drm_i915_private*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC7 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC8 (struct drm_i915_private*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct drm_i915_private*) ; 

void FUNC10(struct drm_i915_private *i915)
{
	if (FUNC0(i915) >= 11) {
		FUNC4(i915);
		FUNC8(i915, true);
		if (i915->csr.dmc_payload) {
			if (i915->csr.allowed_dc_mask &
			    DC_STATE_EN_UPTO_DC6)
				FUNC9(i915);
			else if (i915->csr.allowed_dc_mask &
				 DC_STATE_EN_UPTO_DC5)
				FUNC6(i915);
		}
	} else if (FUNC2(i915)) {
		FUNC4(i915);
		FUNC5(i915, true);
		if (i915->csr.dmc_payload &&
		    (i915->csr.allowed_dc_mask & DC_STATE_EN_UPTO_DC5))
			FUNC6(i915);
	} else if (FUNC3(i915) || FUNC1(i915)) {
		FUNC7(i915);
	}
}