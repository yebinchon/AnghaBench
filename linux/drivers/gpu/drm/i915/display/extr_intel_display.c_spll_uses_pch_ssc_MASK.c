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

/* Variables and functions */
 int /*<<< orphan*/  FUSE_STRAP ; 
 int HSW_CPU_SSC_ENABLE ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  SPLL_CTL ; 
 int SPLL_PLL_ENABLE ; 
 int SPLL_REF_MASK ; 
 int SPLL_REF_MUXED_SSC ; 
 int SPLL_REF_PCH_SSC_BDW ; 

__attribute__((used)) static bool FUNC2(struct drm_i915_private *dev_priv)
{
	u32 fuse_strap = FUNC0(FUSE_STRAP);
	u32 ctl = FUNC0(SPLL_CTL);

	if ((ctl & SPLL_PLL_ENABLE) == 0)
		return false;

	if ((ctl & SPLL_REF_MASK) == SPLL_REF_MUXED_SSC &&
	    (fuse_strap & HSW_CPU_SSC_ENABLE) == 0)
		return true;

	if (FUNC1(dev_priv) &&
	    (ctl & SPLL_REF_MASK) == SPLL_REF_PCH_SSC_BDW)
		return true;

	return false;
}