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
struct intel_guc {int /*<<< orphan*/  fw; } ;
struct drm_i915_private {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  platform; } ;
struct TYPE_3__ {struct drm_i915_private* i915; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct drm_i915_private*) ; 
 TYPE_2__* FUNC1 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  INTEL_UC_FW_TYPE_GUC ; 
 TYPE_1__* FUNC3 (struct intel_guc*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC5(struct intel_guc *guc)
{
	struct drm_i915_private *i915 = FUNC3(guc)->i915;

	FUNC4(&guc->fw, INTEL_UC_FW_TYPE_GUC, FUNC0(i915),
			       FUNC1(i915)->platform, FUNC2(i915));
}