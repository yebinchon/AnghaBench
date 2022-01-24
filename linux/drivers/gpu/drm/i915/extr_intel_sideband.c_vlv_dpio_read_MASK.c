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
typedef  int u32 ;
struct drm_i915_private {int* dpio_phy_iosf_port; } ;
typedef  enum pipe { ____Placeholder_pipe } pipe ;

/* Variables and functions */
 int /*<<< orphan*/  DPIO_DEVFN ; 
 size_t FUNC0 (int) ; 
 int /*<<< orphan*/  SB_MRD_NP ; 
 int /*<<< orphan*/  FUNC1 (int,char*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_i915_private*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int,int*) ; 

u32 FUNC4(struct drm_i915_private *i915, enum pipe pipe, int reg)
{
	int port = i915->dpio_phy_iosf_port[FUNC0(pipe)];
	u32 val = 0;

	FUNC3(i915, DPIO_DEVFN, port, SB_MRD_NP, reg, &val);

	/*
	 * FIXME: There might be some registers where all 1's is a valid value,
	 * so ideally we should check the register offset instead...
	 */
	FUNC1(val == 0xffffffff, "DPIO read pipe %c reg 0x%x == 0x%x\n",
	     FUNC2(pipe), reg, val);

	return val;
}