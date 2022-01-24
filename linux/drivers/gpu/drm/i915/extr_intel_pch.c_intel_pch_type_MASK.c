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
typedef  enum intel_pch { ____Placeholder_intel_pch } intel_pch ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
#define  INTEL_PCH_CMP2_DEVICE_ID_TYPE 145 
#define  INTEL_PCH_CMP_DEVICE_ID_TYPE 144 
#define  INTEL_PCH_CNP_DEVICE_ID_TYPE 143 
#define  INTEL_PCH_CNP_LP_DEVICE_ID_TYPE 142 
#define  INTEL_PCH_CPT_DEVICE_ID_TYPE 141 
#define  INTEL_PCH_IBX_DEVICE_ID_TYPE 140 
#define  INTEL_PCH_ICP_DEVICE_ID_TYPE 139 
#define  INTEL_PCH_KBP_DEVICE_ID_TYPE 138 
#define  INTEL_PCH_LPT_DEVICE_ID_TYPE 137 
#define  INTEL_PCH_LPT_LP_DEVICE_ID_TYPE 136 
#define  INTEL_PCH_MCC2_DEVICE_ID_TYPE 135 
#define  INTEL_PCH_MCC_DEVICE_ID_TYPE 134 
#define  INTEL_PCH_PPT_DEVICE_ID_TYPE 133 
#define  INTEL_PCH_SPT_DEVICE_ID_TYPE 132 
#define  INTEL_PCH_SPT_LP_DEVICE_ID_TYPE 131 
#define  INTEL_PCH_TGP_DEVICE_ID_TYPE 130 
#define  INTEL_PCH_WPT_DEVICE_ID_TYPE 129 
#define  INTEL_PCH_WPT_LP_DEVICE_ID_TYPE 128 
 int /*<<< orphan*/  FUNC1 (struct drm_i915_private const*) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_i915_private const*) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_i915_private const*) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_i915_private const*) ; 
 int /*<<< orphan*/  FUNC5 (struct drm_i915_private const*) ; 
 int /*<<< orphan*/  FUNC6 (struct drm_i915_private const*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct drm_i915_private const*) ; 
 int /*<<< orphan*/  FUNC8 (struct drm_i915_private const*) ; 
 int /*<<< orphan*/  FUNC9 (struct drm_i915_private const*) ; 
 int /*<<< orphan*/  FUNC10 (struct drm_i915_private const*) ; 
 int /*<<< orphan*/  FUNC11 (struct drm_i915_private const*) ; 
 int /*<<< orphan*/  FUNC12 (struct drm_i915_private const*) ; 
 int /*<<< orphan*/  FUNC13 (struct drm_i915_private const*) ; 
 int PCH_CNP ; 
 int PCH_CPT ; 
 int PCH_IBX ; 
 int PCH_ICP ; 
 int PCH_LPT ; 
 int PCH_MCC ; 
 int PCH_NONE ; 
 int PCH_SPT ; 
 int PCH_TGP ; 
 int /*<<< orphan*/  FUNC14 (int) ; 

__attribute__((used)) static enum intel_pch
FUNC15(const struct drm_i915_private *dev_priv, unsigned short id)
{
	switch (id) {
	case INTEL_PCH_IBX_DEVICE_ID_TYPE:
		FUNC0("Found Ibex Peak PCH\n");
		FUNC14(!FUNC6(dev_priv, 5));
		return PCH_IBX;
	case INTEL_PCH_CPT_DEVICE_ID_TYPE:
		FUNC0("Found CougarPoint PCH\n");
		FUNC14(!FUNC6(dev_priv, 6) && !FUNC10(dev_priv));
		return PCH_CPT;
	case INTEL_PCH_PPT_DEVICE_ID_TYPE:
		FUNC0("Found PantherPoint PCH\n");
		FUNC14(!FUNC6(dev_priv, 6) && !FUNC10(dev_priv));
		/* PantherPoint is CPT compatible */
		return PCH_CPT;
	case INTEL_PCH_LPT_DEVICE_ID_TYPE:
		FUNC0("Found LynxPoint PCH\n");
		FUNC14(!FUNC7(dev_priv) && !FUNC2(dev_priv));
		FUNC14(FUNC8(dev_priv) || FUNC1(dev_priv));
		return PCH_LPT;
	case INTEL_PCH_LPT_LP_DEVICE_ID_TYPE:
		FUNC0("Found LynxPoint LP PCH\n");
		FUNC14(!FUNC7(dev_priv) && !FUNC2(dev_priv));
		FUNC14(!FUNC8(dev_priv) && !FUNC1(dev_priv));
		return PCH_LPT;
	case INTEL_PCH_WPT_DEVICE_ID_TYPE:
		FUNC0("Found WildcatPoint PCH\n");
		FUNC14(!FUNC7(dev_priv) && !FUNC2(dev_priv));
		FUNC14(FUNC8(dev_priv) || FUNC1(dev_priv));
		/* WildcatPoint is LPT compatible */
		return PCH_LPT;
	case INTEL_PCH_WPT_LP_DEVICE_ID_TYPE:
		FUNC0("Found WildcatPoint LP PCH\n");
		FUNC14(!FUNC7(dev_priv) && !FUNC2(dev_priv));
		FUNC14(!FUNC8(dev_priv) && !FUNC1(dev_priv));
		/* WildcatPoint is LPT compatible */
		return PCH_LPT;
	case INTEL_PCH_SPT_DEVICE_ID_TYPE:
		FUNC0("Found SunrisePoint PCH\n");
		FUNC14(!FUNC12(dev_priv) && !FUNC11(dev_priv));
		return PCH_SPT;
	case INTEL_PCH_SPT_LP_DEVICE_ID_TYPE:
		FUNC0("Found SunrisePoint LP PCH\n");
		FUNC14(!FUNC12(dev_priv) && !FUNC11(dev_priv));
		return PCH_SPT;
	case INTEL_PCH_KBP_DEVICE_ID_TYPE:
		FUNC0("Found Kaby Lake PCH (KBP)\n");
		FUNC14(!FUNC12(dev_priv) && !FUNC11(dev_priv) &&
			!FUNC4(dev_priv));
		/* KBP is SPT compatible */
		return PCH_SPT;
	case INTEL_PCH_CNP_DEVICE_ID_TYPE:
		FUNC0("Found Cannon Lake PCH (CNP)\n");
		FUNC14(!FUNC3(dev_priv) && !FUNC4(dev_priv));
		return PCH_CNP;
	case INTEL_PCH_CNP_LP_DEVICE_ID_TYPE:
		FUNC0("Found Cannon Lake LP PCH (CNP-LP)\n");
		FUNC14(!FUNC3(dev_priv) && !FUNC4(dev_priv));
		return PCH_CNP;
	case INTEL_PCH_CMP_DEVICE_ID_TYPE:
	case INTEL_PCH_CMP2_DEVICE_ID_TYPE:
		FUNC0("Found Comet Lake PCH (CMP)\n");
		FUNC14(!FUNC4(dev_priv));
		/* CometPoint is CNP Compatible */
		return PCH_CNP;
	case INTEL_PCH_ICP_DEVICE_ID_TYPE:
		FUNC0("Found Ice Lake PCH\n");
		FUNC14(!FUNC9(dev_priv));
		return PCH_ICP;
	case INTEL_PCH_MCC_DEVICE_ID_TYPE:
	case INTEL_PCH_MCC2_DEVICE_ID_TYPE:
		FUNC0("Found Mule Creek Canyon PCH\n");
		FUNC14(!FUNC5(dev_priv));
		return PCH_MCC;
	case INTEL_PCH_TGP_DEVICE_ID_TYPE:
		FUNC0("Found Tiger Lake LP PCH\n");
		FUNC14(!FUNC13(dev_priv));
		return PCH_TGP;
	default:
		return PCH_NONE;
	}
}