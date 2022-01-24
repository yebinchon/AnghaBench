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
struct drm_i915_private {int dummy; } ;
typedef  int /*<<< orphan*/  i915_reg_t ;

/* Variables and functions */
 int /*<<< orphan*/  GEN7_MSG_CTL ; 
 int /*<<< orphan*/  HSW_NDE_RSTWRN_OPT ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC2 (struct drm_i915_private*) ; 
 int RESET_PCH_HANDSHAKE_ENABLE ; 
 int WAIT_FOR_PCH_FLR_ACK ; 
 int WAIT_FOR_PCH_RESET_ACK ; 

__attribute__((used)) static void FUNC3(struct drm_i915_private *dev_priv,
				      bool enable)
{
	i915_reg_t reg;
	u32 reset_bits, val;

	if (FUNC2(dev_priv)) {
		reg = GEN7_MSG_CTL;
		reset_bits = WAIT_FOR_PCH_FLR_ACK | WAIT_FOR_PCH_RESET_ACK;
	} else {
		reg = HSW_NDE_RSTWRN_OPT;
		reset_bits = RESET_PCH_HANDSHAKE_ENABLE;
	}

	val = FUNC0(reg);

	if (enable)
		val |= reset_bits;
	else
		val &= ~reset_bits;

	FUNC1(reg, val);
}