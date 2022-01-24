#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct drm_printer {int dummy; } ;
struct drm_i915_private {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  platform; } ;

/* Variables and functions */
 int /*<<< orphan*/  CONFIG_DRM_I915_DEBUG ; 
 int /*<<< orphan*/  CONFIG_DRM_I915_DEBUG_GEM ; 
 int /*<<< orphan*/  CONFIG_DRM_I915_DEBUG_RUNTIME_PM ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int DRM_UT_DRIVER ; 
 int /*<<< orphan*/  FUNC1 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_i915_private*) ; 
 TYPE_1__* FUNC3 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_i915_private*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct drm_i915_private*) ; 
 int drm_debug ; 
 struct drm_printer FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (struct drm_printer*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,struct drm_printer*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,struct drm_printer*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC13(struct drm_i915_private *dev_priv)
{
	if (drm_debug & DRM_UT_DRIVER) {
		struct drm_printer p = FUNC7("i915 device info:");

		FUNC8(&p, "pciid=0x%04x rev=0x%02x platform=%s (subplatform=0x%x) gen=%i\n",
			   FUNC1(dev_priv),
			   FUNC4(dev_priv),
			   FUNC11(FUNC3(dev_priv)->platform),
			   FUNC12(FUNC6(dev_priv),
					     FUNC3(dev_priv)->platform),
			   FUNC2(dev_priv));

		FUNC9(FUNC3(dev_priv), &p);
		FUNC10(FUNC6(dev_priv), &p);
	}

	if (FUNC5(CONFIG_DRM_I915_DEBUG))
		FUNC0("DRM_I915_DEBUG enabled\n");
	if (FUNC5(CONFIG_DRM_I915_DEBUG_GEM))
		FUNC0("DRM_I915_DEBUG_GEM enabled\n");
	if (FUNC5(CONFIG_DRM_I915_DEBUG_RUNTIME_PM))
		FUNC0("DRM_I915_DEBUG_RUNTIME_PM enabled\n");
}