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
struct TYPE_2__ {int allowed_dc_mask; int dc_state; } ;
struct drm_i915_private {TYPE_1__ csr; } ;

/* Variables and functions */
 int /*<<< orphan*/  DC_STATE_EN ; 
 int /*<<< orphan*/  FUNC0 (char*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int) ; 
 int FUNC4 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC5 (struct drm_i915_private*,int) ; 

__attribute__((used)) static void FUNC6(struct drm_i915_private *dev_priv, u32 state)
{
	u32 val;
	u32 mask;

	if (FUNC3(state & ~dev_priv->csr.allowed_dc_mask))
		state &= dev_priv->csr.allowed_dc_mask;

	val = FUNC2(DC_STATE_EN);
	mask = FUNC4(dev_priv);
	FUNC0("Setting DC state from %02x to %02x\n",
		      val & mask, state);

	/* Check if DMC is ignoring our DC state requests */
	if ((val & mask) != dev_priv->csr.dc_state)
		FUNC1("DC state mismatch (0x%x -> 0x%x)\n",
			  dev_priv->csr.dc_state, val & mask);

	val &= ~mask;
	val |= state;

	FUNC5(dev_priv, val);

	dev_priv->csr.dc_state = val & mask;
}