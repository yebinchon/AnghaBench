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
struct seq_file {int /*<<< orphan*/  private; } ;
struct drm_i915_private {int dummy; } ;

/* Variables and functions */
 int GEN6_CORE_CPD_STATE_MASK ; 
 char* FUNC0 (int) ; 
 int /*<<< orphan*/  GEN6_GT_CORE_STATUS ; 
 int /*<<< orphan*/  GEN6_GT_GFX_RC6 ; 
 int /*<<< orphan*/  GEN6_GT_GFX_RC6_LOCKED ; 
 int /*<<< orphan*/  GEN6_GT_GFX_RC6p ; 
 int /*<<< orphan*/  GEN6_GT_GFX_RC6pp ; 
 int /*<<< orphan*/  GEN6_PCODE_READ_RC6VIDS ; 
#define  GEN6_RC0 131 
#define  GEN6_RC3 130 
#define  GEN6_RC6 129 
#define  GEN6_RC7 128 
 int /*<<< orphan*/  GEN6_RC_CONTROL ; 
 int GEN6_RC_CTL_RC1e_ENABLE ; 
 int GEN6_RC_CTL_RC6_ENABLE ; 
 int GEN6_RC_CTL_RC6p_ENABLE ; 
 int GEN6_RC_CTL_RC6pp_ENABLE ; 
 int GEN6_RCn_MASK ; 
 int GEN9_MEDIA_PG_ENABLE ; 
 int /*<<< orphan*/  GEN9_PG_ENABLE ; 
 int /*<<< orphan*/  GEN9_PWRGT_DOMAIN_STATUS ; 
 int GEN9_PWRGT_MEDIA_STATUS_MASK ; 
 int GEN9_PWRGT_RENDER_STATUS_MASK ; 
 int GEN9_RENDER_PG_ENABLE ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (struct drm_i915_private*) ; 
 int FUNC4 (struct seq_file*,int /*<<< orphan*/ *) ; 
 struct drm_i915_private* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct seq_file*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct drm_i915_private*,int /*<<< orphan*/ ,int*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct seq_file*,char*,char*) ; 
 int /*<<< orphan*/  FUNC9 (struct seq_file*,char*) ; 
 int /*<<< orphan*/  FUNC10 (int,int /*<<< orphan*/ ,int,int,int) ; 
 char* FUNC11 (int) ; 

__attribute__((used)) static int FUNC12(struct seq_file *m)
{
	struct drm_i915_private *dev_priv = FUNC5(m->private);
	u32 gt_core_status, rcctl1, rc6vids = 0;
	u32 gen9_powergate_enable = 0, gen9_powergate_status = 0;

	gt_core_status = FUNC2(GEN6_GT_CORE_STATUS);
	FUNC10(false, GEN6_GT_CORE_STATUS, gt_core_status, 4, true);

	rcctl1 = FUNC1(GEN6_RC_CONTROL);
	if (FUNC3(dev_priv) >= 9) {
		gen9_powergate_enable = FUNC1(GEN9_PG_ENABLE);
		gen9_powergate_status = FUNC1(GEN9_PWRGT_DOMAIN_STATUS);
	}

	if (FUNC3(dev_priv) <= 7)
		FUNC7(dev_priv, GEN6_PCODE_READ_RC6VIDS,
				       &rc6vids, NULL);

	FUNC8(m, "RC1e Enabled: %s\n",
		   FUNC11(rcctl1 & GEN6_RC_CTL_RC1e_ENABLE));
	FUNC8(m, "RC6 Enabled: %s\n",
		   FUNC11(rcctl1 & GEN6_RC_CTL_RC6_ENABLE));
	if (FUNC3(dev_priv) >= 9) {
		FUNC8(m, "Render Well Gating Enabled: %s\n",
			FUNC11(gen9_powergate_enable & GEN9_RENDER_PG_ENABLE));
		FUNC8(m, "Media Well Gating Enabled: %s\n",
			FUNC11(gen9_powergate_enable & GEN9_MEDIA_PG_ENABLE));
	}
	FUNC8(m, "Deep RC6 Enabled: %s\n",
		   FUNC11(rcctl1 & GEN6_RC_CTL_RC6p_ENABLE));
	FUNC8(m, "Deepest RC6 Enabled: %s\n",
		   FUNC11(rcctl1 & GEN6_RC_CTL_RC6pp_ENABLE));
	FUNC9(m, "Current RC state: ");
	switch (gt_core_status & GEN6_RCn_MASK) {
	case GEN6_RC0:
		if (gt_core_status & GEN6_CORE_CPD_STATE_MASK)
			FUNC9(m, "Core Power Down\n");
		else
			FUNC9(m, "on\n");
		break;
	case GEN6_RC3:
		FUNC9(m, "RC3\n");
		break;
	case GEN6_RC6:
		FUNC9(m, "RC6\n");
		break;
	case GEN6_RC7:
		FUNC9(m, "RC7\n");
		break;
	default:
		FUNC9(m, "Unknown\n");
		break;
	}

	FUNC8(m, "Core Power Down: %s\n",
		   FUNC11(gt_core_status & GEN6_CORE_CPD_STATE_MASK));
	if (FUNC3(dev_priv) >= 9) {
		FUNC8(m, "Render Power Well: %s\n",
			(gen9_powergate_status &
			 GEN9_PWRGT_RENDER_STATUS_MASK) ? "Up" : "Down");
		FUNC8(m, "Media Power Well: %s\n",
			(gen9_powergate_status &
			 GEN9_PWRGT_MEDIA_STATUS_MASK) ? "Up" : "Down");
	}

	/* Not exactly sure what this is */
	FUNC6(m, "RC6 \"Locked to RPn\" residency since boot:",
		      GEN6_GT_GFX_RC6_LOCKED);
	FUNC6(m, "RC6 residency since boot:", GEN6_GT_GFX_RC6);
	FUNC6(m, "RC6+ residency since boot:", GEN6_GT_GFX_RC6p);
	FUNC6(m, "RC6++ residency since boot:", GEN6_GT_GFX_RC6pp);

	if (FUNC3(dev_priv) <= 7) {
		FUNC8(m, "RC6   voltage: %dmV\n",
			   FUNC0(((rc6vids >> 0) & 0xff)));
		FUNC8(m, "RC6+  voltage: %dmV\n",
			   FUNC0(((rc6vids >> 8) & 0xff)));
		FUNC8(m, "RC6++ voltage: %dmV\n",
			   FUNC0(((rc6vids >> 16) & 0xff)));
	}

	return FUNC4(m, NULL);
}