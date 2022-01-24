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
struct drm_i915_private {int dummy; } ;
typedef  enum transcoder { ____Placeholder_transcoder } transcoder ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int /*<<< orphan*/  HSW_AUD_PIN_ELD_CP_VLD ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  POWER_DOMAIN_AUDIO ; 
 int TRANSCODER_EDP ; 
 int /*<<< orphan*/  FUNC2 (struct drm_i915_private*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC3(struct drm_i915_private *dev_priv,
				       enum transcoder cpu_transcoder)
{
	if (cpu_transcoder == TRANSCODER_EDP)
		return false;

	if (!FUNC2(dev_priv, POWER_DOMAIN_AUDIO))
		return false;

	return FUNC1(HSW_AUD_PIN_ELD_CP_VLD) &
		FUNC0(cpu_transcoder);
}