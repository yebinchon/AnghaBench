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
struct intel_uncore {int /*<<< orphan*/  i915; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct intel_uncore*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct intel_uncore*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  gen2 ; 
 int /*<<< orphan*/  gen5 ; 
 int /*<<< orphan*/  FUNC4 (struct intel_uncore*) ; 

__attribute__((used)) static void FUNC5(struct intel_uncore *uncore)
{
	FUNC2(FUNC4(uncore));

	if (FUNC3(uncore->i915, 5)) {
		FUNC1(uncore, gen5);
		FUNC0(uncore, gen5);
	} else {
		FUNC1(uncore, gen2);
		FUNC0(uncore, gen2);
	}
}