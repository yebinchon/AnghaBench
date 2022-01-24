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
struct TYPE_2__ {int dc_state; } ;
struct drm_i915_private {TYPE_1__ csr; } ;

/* Variables and functions */
 int /*<<< orphan*/  DC_STATE_EN ; 
 int /*<<< orphan*/  FUNC0 (char*,int,int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct drm_i915_private*) ; 

__attribute__((used)) static void FUNC3(struct drm_i915_private *dev_priv)
{
	u32 val;

	val = FUNC1(DC_STATE_EN) & FUNC2(dev_priv);

	FUNC0("Resetting DC state tracking from %02x to %02x\n",
		      dev_priv->csr.dc_state, val);
	dev_priv->csr.dc_state = val;
}