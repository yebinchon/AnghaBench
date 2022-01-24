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
struct intel_guc {scalar_t__ handler; scalar_t__ mmio_msg; } ;
struct drm_i915_private {int /*<<< orphan*/  irq_lock; } ;
struct TYPE_2__ {struct drm_i915_private* i915; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 TYPE_1__* FUNC1 (struct intel_guc*) ; 
 scalar_t__ intel_guc_to_host_event_handler_nop ; 
 int /*<<< orphan*/  FUNC2 (struct intel_guc*,scalar_t__*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct intel_guc *guc)
{
	struct drm_i915_private *i915 = FUNC1(guc)->i915;

	/* we need communication to be enabled to reply to GuC */
	FUNC0(guc->handler == intel_guc_to_host_event_handler_nop);

	if (!guc->mmio_msg)
		return;

	FUNC3(&i915->irq_lock);
	FUNC2(guc, &guc->mmio_msg, 1);
	FUNC4(&i915->irq_lock);

	guc->mmio_msg = 0;
}