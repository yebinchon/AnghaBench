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
struct TYPE_3__ {int /*<<< orphan*/  disable; int /*<<< orphan*/  enable; int /*<<< orphan*/  reset; } ;
struct intel_guc {TYPE_1__ interrupts; int /*<<< orphan*/  notify; int /*<<< orphan*/  handler; int /*<<< orphan*/  send; int /*<<< orphan*/  irq_lock; int /*<<< orphan*/  send_mutex; int /*<<< orphan*/  log; int /*<<< orphan*/  ct; } ;
struct drm_i915_private {int dummy; } ;
struct TYPE_4__ {struct drm_i915_private* i915; } ;

/* Variables and functions */
 int FUNC0 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  gen11_disable_guc_interrupts ; 
 int /*<<< orphan*/  gen11_enable_guc_interrupts ; 
 int /*<<< orphan*/  gen11_guc_raise_irq ; 
 int /*<<< orphan*/  gen11_reset_guc_interrupts ; 
 int /*<<< orphan*/  gen8_guc_raise_irq ; 
 int /*<<< orphan*/  gen9_disable_guc_interrupts ; 
 int /*<<< orphan*/  gen9_enable_guc_interrupts ; 
 int /*<<< orphan*/  gen9_reset_guc_interrupts ; 
 TYPE_2__* FUNC1 (struct intel_guc*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct intel_guc*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  intel_guc_send_nop ; 
 int /*<<< orphan*/  FUNC5 (struct intel_guc*) ; 
 int /*<<< orphan*/  intel_guc_to_host_event_handler_nop ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

void FUNC8(struct intel_guc *guc)
{
	struct drm_i915_private *i915 = FUNC1(guc)->i915;

	FUNC3(guc);
	FUNC2(&guc->ct);
	FUNC4(&guc->log);
	FUNC5(guc);

	FUNC6(&guc->send_mutex);
	FUNC7(&guc->irq_lock);
	guc->send = intel_guc_send_nop;
	guc->handler = intel_guc_to_host_event_handler_nop;
	if (FUNC0(i915) >= 11) {
		guc->notify = gen11_guc_raise_irq;
		guc->interrupts.reset = gen11_reset_guc_interrupts;
		guc->interrupts.enable = gen11_enable_guc_interrupts;
		guc->interrupts.disable = gen11_disable_guc_interrupts;
	} else {
		guc->notify = gen8_guc_raise_irq;
		guc->interrupts.reset = gen9_reset_guc_interrupts;
		guc->interrupts.enable = gen9_enable_guc_interrupts;
		guc->interrupts.disable = gen9_disable_guc_interrupts;
	}
}