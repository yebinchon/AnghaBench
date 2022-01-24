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
struct intel_uncore {TYPE_1__* debug; int /*<<< orphan*/  lock; } ;
typedef  int /*<<< orphan*/  i915_reg_t ;
struct TYPE_4__ {int /*<<< orphan*/  mmio_debug; } ;
struct TYPE_3__ {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct intel_uncore*,int /*<<< orphan*/  const,int const,int const) ; 
 TYPE_2__ i915_modparams ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline void
FUNC5(struct intel_uncore *uncore,
		    const i915_reg_t reg,
		    const bool read,
		    const bool before)
{
	if (FUNC1(!i915_modparams.mmio_debug))
		return;

	/* interrupts are disabled and re-enabled around uncore->lock usage */
	FUNC2(&uncore->lock);

	if (before)
		FUNC3(&uncore->debug->lock);

	FUNC0(uncore, reg, read, before);

	if (!before)
		FUNC4(&uncore->debug->lock);
}