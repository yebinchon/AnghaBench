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
struct intel_opregion {TYPE_2__* acpi; int /*<<< orphan*/  asle_work; TYPE_1__* asle; int /*<<< orphan*/  header; } ;
struct drm_i915_private {struct intel_opregion opregion; } ;
typedef  int /*<<< orphan*/  pci_power_t ;
struct TYPE_4__ {scalar_t__ drdy; } ;
struct TYPE_3__ {int /*<<< orphan*/  ardy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ASLE_ARDY_NOT_READY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_i915_private*,int /*<<< orphan*/ ) ; 

void FUNC2(struct drm_i915_private *i915, pci_power_t state)
{
	struct intel_opregion *opregion = &i915->opregion;

	if (!opregion->header)
		return;

	FUNC1(i915, state);

	if (opregion->asle)
		opregion->asle->ardy = ASLE_ARDY_NOT_READY;

	FUNC0(&i915->opregion.asle_work);

	if (opregion->acpi)
		opregion->acpi->drdy = 0;
}