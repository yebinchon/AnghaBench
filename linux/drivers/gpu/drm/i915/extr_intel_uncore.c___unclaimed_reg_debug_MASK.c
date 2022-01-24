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
struct intel_uncore {int dummy; } ;
typedef  int /*<<< orphan*/  i915_reg_t ;
struct TYPE_2__ {int /*<<< orphan*/  mmio_debug; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int,char*,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct intel_uncore*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/  const) ; 
 TYPE_1__ i915_modparams ; 

__attribute__((used)) static void
FUNC3(struct intel_uncore *uncore,
		      const i915_reg_t reg,
		      const bool read,
		      const bool before)
{
	if (FUNC0(FUNC1(uncore) && !before,
		 "Unclaimed %s register 0x%x\n",
		 read ? "read from" : "write to",
		 FUNC2(reg)))
		/* Only report the first N failures */
		i915_modparams.mmio_debug--;
}