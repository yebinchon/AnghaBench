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
struct intel_crt {int force_hotplug_required; int /*<<< orphan*/  adpa_reg; } ;
struct drm_i915_private {int dummy; } ;
struct drm_encoder {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  ADPA_CRT_HOTPLUG_MASK ; 
 int /*<<< orphan*/  ADPA_HOTPLUG_BITS ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 struct intel_crt* FUNC5 (int /*<<< orphan*/ ) ; 
 struct drm_i915_private* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct drm_encoder*) ; 

void FUNC8(struct drm_encoder *encoder)
{
	struct drm_i915_private *dev_priv = FUNC6(encoder->dev);
	struct intel_crt *crt = FUNC5(FUNC7(encoder));

	if (FUNC3(dev_priv) >= 5) {
		u32 adpa;

		adpa = FUNC1(crt->adpa_reg);
		adpa &= ~ADPA_CRT_HOTPLUG_MASK;
		adpa |= ADPA_HOTPLUG_BITS;
		FUNC2(crt->adpa_reg, adpa);
		FUNC4(crt->adpa_reg);

		FUNC0("crt adpa set to 0x%x\n", adpa);
		crt->force_hotplug_required = 1;
	}

}