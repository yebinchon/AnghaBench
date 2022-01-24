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
struct TYPE_2__ {int /*<<< orphan*/ * notifier_call; } ;
struct intel_opregion {int /*<<< orphan*/ * lid_state; int /*<<< orphan*/ * vbt; int /*<<< orphan*/ * asle; int /*<<< orphan*/ * swsci; int /*<<< orphan*/ * acpi; int /*<<< orphan*/ * header; int /*<<< orphan*/ * vbt_firmware; int /*<<< orphan*/ * rvda; TYPE_1__ acpi_notifier; } ;
struct drm_i915_private {struct intel_opregion opregion; } ;

/* Variables and functions */
 int /*<<< orphan*/  PCI_D1 ; 
 int /*<<< orphan*/  FUNC0 (struct drm_i915_private*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 

void FUNC4(struct drm_i915_private *i915)
{
	struct intel_opregion *opregion = &i915->opregion;

	FUNC0(i915, PCI_D1);

	if (!opregion->header)
		return;

	if (opregion->acpi_notifier.notifier_call) {
		FUNC3(&opregion->acpi_notifier);
		opregion->acpi_notifier.notifier_call = NULL;
	}

	/* just clear all opregion memory pointers now */
	FUNC2(opregion->header);
	if (opregion->rvda) {
		FUNC2(opregion->rvda);
		opregion->rvda = NULL;
	}
	if (opregion->vbt_firmware) {
		FUNC1(opregion->vbt_firmware);
		opregion->vbt_firmware = NULL;
	}
	opregion->header = NULL;
	opregion->acpi = NULL;
	opregion->swsci = NULL;
	opregion->asle = NULL;
	opregion->vbt = NULL;
	opregion->lid_state = NULL;
}