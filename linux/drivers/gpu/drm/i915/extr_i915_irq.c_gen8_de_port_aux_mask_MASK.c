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
 int CNL_AUX_CHANNEL_F ; 
 int GEN8_AUX_CHANNEL_A ; 
 int GEN9_AUX_CHANNEL_B ; 
 int GEN9_AUX_CHANNEL_C ; 
 int GEN9_AUX_CHANNEL_D ; 
 int ICL_AUX_CHANNEL_E ; 
 int FUNC0 (struct drm_i915_private*) ; 
 scalar_t__ FUNC1 (struct drm_i915_private*) ; 
 scalar_t__ FUNC2 (struct drm_i915_private*,int) ; 
 int TGL_DE_PORT_AUX_DDIA ; 
 int TGL_DE_PORT_AUX_DDIB ; 
 int TGL_DE_PORT_AUX_DDIC ; 

__attribute__((used)) static u32 FUNC3(struct drm_i915_private *dev_priv)
{
	u32 mask;

	if (FUNC0(dev_priv) >= 12)
		/* TODO: Add AUX entries for USBC */
		return TGL_DE_PORT_AUX_DDIA |
			TGL_DE_PORT_AUX_DDIB |
			TGL_DE_PORT_AUX_DDIC;

	mask = GEN8_AUX_CHANNEL_A;
	if (FUNC0(dev_priv) >= 9)
		mask |= GEN9_AUX_CHANNEL_B |
			GEN9_AUX_CHANNEL_C |
			GEN9_AUX_CHANNEL_D;

	if (FUNC1(dev_priv) || FUNC2(dev_priv, 11))
		mask |= CNL_AUX_CHANNEL_F;

	if (FUNC2(dev_priv, 11))
		mask |= ICL_AUX_CHANNEL_E;

	return mask;
}