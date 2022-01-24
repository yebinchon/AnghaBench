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
struct intel_context {int dummy; } ;
struct i915_address_space {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct i915_address_space*) ; 
 struct i915_address_space* FUNC2 (struct intel_context*) ; 

__attribute__((used)) static void FUNC3(struct intel_context *ce)
{
	struct i915_address_space *vm;

	vm = FUNC2(ce);
	if (vm)
		FUNC0(FUNC1(vm));
}