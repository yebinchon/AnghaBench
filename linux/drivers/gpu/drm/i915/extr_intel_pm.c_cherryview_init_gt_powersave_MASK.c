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
struct intel_rps {int max_freq; int rp0_freq; int efficient_freq; int rp1_freq; int min_freq; } ;
struct TYPE_2__ {struct intel_rps rps; } ;
struct drm_i915_private {int mem_freq; TYPE_1__ gt_pm; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CCK_FUSE_REG ; 
 int /*<<< orphan*/  FUNC1 (char*,int,...) ; 
 int /*<<< orphan*/  VLV_IOSF_SB_CCK ; 
 int /*<<< orphan*/  VLV_IOSF_SB_NC ; 
 int /*<<< orphan*/  VLV_IOSF_SB_PUNIT ; 
 int /*<<< orphan*/  FUNC2 (int,char*) ; 
 int FUNC3 (struct drm_i915_private*) ; 
 int FUNC4 (struct drm_i915_private*) ; 
 int FUNC5 (struct drm_i915_private*) ; 
 int FUNC6 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC7 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC8 (struct drm_i915_private*,int) ; 
 int FUNC9 (struct drm_i915_private*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC11 (struct drm_i915_private*,int) ; 
 int /*<<< orphan*/  FUNC12 (struct drm_i915_private*,int) ; 

__attribute__((used)) static void FUNC13(struct drm_i915_private *dev_priv)
{
	struct intel_rps *rps = &dev_priv->gt_pm.rps;
	u32 val;

	FUNC7(dev_priv);

	FUNC11(dev_priv,
			FUNC0(VLV_IOSF_SB_PUNIT) |
			FUNC0(VLV_IOSF_SB_NC) |
			FUNC0(VLV_IOSF_SB_CCK));

	FUNC10(dev_priv);

	val = FUNC9(dev_priv, CCK_FUSE_REG);

	switch ((val >> 2) & 0x7) {
	case 3:
		dev_priv->mem_freq = 2000;
		break;
	default:
		dev_priv->mem_freq = 1600;
		break;
	}
	FUNC1("DDR speed: %d MHz\n", dev_priv->mem_freq);

	rps->max_freq = FUNC4(dev_priv);
	rps->rp0_freq = rps->max_freq;
	FUNC1("max GPU freq: %d MHz (%u)\n",
			 FUNC8(dev_priv, rps->max_freq),
			 rps->max_freq);

	rps->efficient_freq = FUNC6(dev_priv);
	FUNC1("RPe GPU freq: %d MHz (%u)\n",
			 FUNC8(dev_priv, rps->efficient_freq),
			 rps->efficient_freq);

	rps->rp1_freq = FUNC3(dev_priv);
	FUNC1("RP1(Guar) GPU freq: %d MHz (%u)\n",
			 FUNC8(dev_priv, rps->rp1_freq),
			 rps->rp1_freq);

	rps->min_freq = FUNC5(dev_priv);
	FUNC1("min GPU freq: %d MHz (%u)\n",
			 FUNC8(dev_priv, rps->min_freq),
			 rps->min_freq);

	FUNC12(dev_priv,
			FUNC0(VLV_IOSF_SB_PUNIT) |
			FUNC0(VLV_IOSF_SB_NC) |
			FUNC0(VLV_IOSF_SB_CCK));

	FUNC2((rps->max_freq | rps->efficient_freq | rps->rp1_freq |
		   rps->min_freq) & 1,
		  "Odd GPU freq values\n");
}