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
typedef  int /*<<< orphan*/  u32 ;
struct intel_uncore {int dummy; } ;
typedef  int /*<<< orphan*/  i915_reg_t ;

/* Variables and functions */
 int FUNC0 (struct intel_uncore*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,unsigned int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline int
FUNC1(struct intel_uncore *uncore,
			i915_reg_t reg,
			u32 mask,
			u32 value,
			unsigned int timeout_ms)
{
	return FUNC0(uncore, reg, mask, value, 2,
					 timeout_ms, NULL);
}