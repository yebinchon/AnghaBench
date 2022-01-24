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
struct intel_uc {int dummy; } ;
struct intel_huc {int /*<<< orphan*/  fw; } ;
struct intel_gt {struct drm_i915_private* i915; struct intel_uc uc; } ;
struct drm_i915_private {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  platform; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  INTEL_UC_FW_TYPE_HUC ; 
 struct intel_gt* FUNC2 (struct intel_huc*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct intel_uc*) ; 

void FUNC5(struct intel_huc *huc)
{
	struct intel_gt *gt = FUNC2(huc);
	struct intel_uc *uc = &gt->uc;
	struct drm_i915_private *i915 = gt->i915;

	FUNC3(&huc->fw, INTEL_UC_FW_TYPE_HUC,
			       FUNC4(uc),
			       FUNC0(i915)->platform, FUNC1(i915));
}