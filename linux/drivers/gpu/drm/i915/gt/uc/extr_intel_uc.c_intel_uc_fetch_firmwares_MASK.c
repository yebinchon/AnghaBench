#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  fw; } ;
struct TYPE_4__ {int /*<<< orphan*/  fw; } ;
struct intel_uc {TYPE_2__ huc; TYPE_1__ guc; } ;
struct drm_i915_private {int dummy; } ;
struct TYPE_6__ {struct drm_i915_private* i915; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC1 (struct intel_uc*) ; 
 scalar_t__ FUNC2 (struct intel_uc*) ; 
 TYPE_3__* FUNC3 (struct intel_uc*) ; 

void FUNC4(struct intel_uc *uc)
{
	struct drm_i915_private *i915 = FUNC3(uc)->i915;
	int err;

	if (!FUNC1(uc))
		return;

	err = FUNC0(&uc->guc.fw, i915);
	if (err)
		return;

	if (FUNC2(uc))
		FUNC0(&uc->huc.fw, i915);
}