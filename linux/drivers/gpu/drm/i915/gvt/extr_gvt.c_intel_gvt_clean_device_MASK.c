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
struct intel_gvt {int /*<<< orphan*/  vgpu_idr; int /*<<< orphan*/  idle_vgpu; } ;
struct drm_i915_private {int /*<<< orphan*/ * gvt; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct intel_gvt*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct intel_gvt*) ; 
 int /*<<< orphan*/  FUNC4 (struct intel_gvt*) ; 
 int /*<<< orphan*/  FUNC5 (struct intel_gvt*) ; 
 int /*<<< orphan*/  FUNC6 (struct intel_gvt*) ; 
 int /*<<< orphan*/  FUNC7 (struct intel_gvt*) ; 
 int /*<<< orphan*/  FUNC8 (struct intel_gvt*) ; 
 int /*<<< orphan*/  FUNC9 (struct intel_gvt*) ; 
 int /*<<< orphan*/  FUNC10 (struct intel_gvt*) ; 
 int /*<<< orphan*/  FUNC11 (struct intel_gvt*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct intel_gvt*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 struct intel_gvt* FUNC15 (struct drm_i915_private*) ; 

void FUNC16(struct drm_i915_private *dev_priv)
{
	struct intel_gvt *gvt = FUNC15(dev_priv);

	if (FUNC0(!gvt))
		return;

	FUNC12(gvt->idle_vgpu);
	FUNC10(gvt);
	FUNC8(gvt);

	FUNC11(gvt);
	FUNC1(gvt);
	FUNC3(gvt);
	FUNC7(gvt);
	FUNC9(gvt);
	FUNC4(gvt);
	FUNC5(gvt);
	FUNC13(gvt);
	FUNC6(gvt);
	FUNC2(&gvt->vgpu_idr);

	FUNC14(dev_priv->gvt);
	dev_priv->gvt = NULL;
}