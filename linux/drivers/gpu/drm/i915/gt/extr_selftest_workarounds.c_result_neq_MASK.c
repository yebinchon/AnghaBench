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
typedef  scalar_t__ u32 ;
struct intel_engine_cs {int /*<<< orphan*/  i915; } ;
typedef  int /*<<< orphan*/  i915_reg_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC3(struct intel_engine_cs *engine,
		       u32 a, u32 b, i915_reg_t reg)
{
	if (a == b && !FUNC2(engine->i915, reg)) {
		FUNC1("Whitelist register 0x%4x:%08x was unwritable\n",
		       FUNC0(reg), a);
		return false;
	}

	return true;
}