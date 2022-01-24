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
typedef  int u32 ;
struct TYPE_2__ {int count; scalar_t__ base; } ;
struct intel_guc {TYPE_1__ send_regs; } ;
typedef  int /*<<< orphan*/  i915_reg_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 

__attribute__((used)) static inline i915_reg_t FUNC2(struct intel_guc *guc, u32 i)
{
	FUNC0(!guc->send_regs.base);
	FUNC0(!guc->send_regs.count);
	FUNC0(i >= guc->send_regs.count);

	return FUNC1(guc->send_regs.base + 4 * i);
}