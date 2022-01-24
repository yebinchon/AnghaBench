#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct intel_uncore_forcewake_domain {int /*<<< orphan*/  id; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FORCEWAKE_KERNEL ; 
 int /*<<< orphan*/  TAINT_WARN ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct intel_uncore_forcewake_domain const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void
FUNC4(const struct intel_uncore_forcewake_domain *d)
{
	if (FUNC3(d, FORCEWAKE_KERNEL)) {
		FUNC0("%s: timed out waiting for forcewake ack to clear.\n",
			  FUNC2(d->id));
		FUNC1(TAINT_WARN); /* CI now unreliable */
	}
}