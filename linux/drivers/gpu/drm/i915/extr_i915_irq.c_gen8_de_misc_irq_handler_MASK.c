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
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  EDP_PSR_IIR ; 
 int GEN8_DE_EDP_PSR ; 
 int GEN8_DE_MISC_GSE ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_i915_private*,int) ; 

__attribute__((used)) static void
FUNC5(struct drm_i915_private *dev_priv, u32 iir)
{
	bool found = false;

	if (iir & GEN8_DE_MISC_GSE) {
		FUNC3(dev_priv);
		found = true;
	}

	if (iir & GEN8_DE_EDP_PSR) {
		u32 psr_iir = FUNC1(EDP_PSR_IIR);

		FUNC4(dev_priv, psr_iir);
		FUNC2(EDP_PSR_IIR, psr_iir);
		found = true;
	}

	if (!found)
		FUNC0("Unexpected DE Misc interrupt\n");
}