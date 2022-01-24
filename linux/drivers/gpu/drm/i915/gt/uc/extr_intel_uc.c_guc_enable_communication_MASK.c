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
struct intel_guc {int /*<<< orphan*/  (* handler ) (struct intel_guc*) ;int /*<<< orphan*/  send; int /*<<< orphan*/  ct; } ;
struct drm_i915_private {int /*<<< orphan*/  irq_lock; } ;
struct TYPE_2__ {struct drm_i915_private* i915; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  ENXIO ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct intel_guc*) ; 
 int /*<<< orphan*/  FUNC3 (struct intel_guc*) ; 
 int /*<<< orphan*/  FUNC4 (struct intel_guc*) ; 
 int /*<<< orphan*/  FUNC5 (struct intel_guc*) ; 
 TYPE_1__* FUNC6 (struct intel_guc*) ; 
 int FUNC7 (struct drm_i915_private*,int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  intel_guc_send_ct ; 
 int /*<<< orphan*/  FUNC9 (struct intel_guc*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC12(struct intel_guc *guc)
{
	struct drm_i915_private *i915 = FUNC6(guc)->i915;
	int ret;

	FUNC1(FUNC2(guc));

	ret = FUNC7(i915, -ENXIO);
	if (ret)
		return ret;

	ret = FUNC8(&guc->ct);
	if (ret)
		return ret;

	guc->send = intel_guc_send_ct;
	guc->handler = intel_guc_to_host_event_handler_ct;

	/* check for mmio messages received before/during the CT enable */
	FUNC4(guc);
	FUNC5(guc);

	FUNC3(guc);

	/* check for CT messages received before we enabled interrupts */
	FUNC10(&i915->irq_lock);
	FUNC9(guc);
	FUNC11(&i915->irq_lock);

	FUNC0("GuC communication enabled\n");

	return 0;
}