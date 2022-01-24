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
 int /*<<< orphan*/  GEN6_RC_CONTROL ; 
 int FUNC0 (int) ; 
 int GEN7_RC_CTL_TO_MODE ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int VLV_GTLC_PW_MEDIA_STATUS_MASK ; 
 int VLV_GTLC_PW_RENDER_STATUS_MASK ; 
 int /*<<< orphan*/  VLV_GTLC_PW_STATUS ; 
 int /*<<< orphan*/  VLV_GT_MEDIA_RC6 ; 
 int /*<<< orphan*/  VLV_GT_RENDER_RC6 ; 
 int FUNC2 (struct seq_file*,int /*<<< orphan*/ *) ; 
 struct drm_i915_private* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct seq_file*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct seq_file*,char*,char*) ; 
 char* FUNC6 (int) ; 

__attribute__((used)) static int FUNC7(struct seq_file *m)
{
	struct drm_i915_private *dev_priv = FUNC3(m->private);
	u32 rcctl1, pw_status;

	pw_status = FUNC1(VLV_GTLC_PW_STATUS);
	rcctl1 = FUNC1(GEN6_RC_CONTROL);

	FUNC5(m, "RC6 Enabled: %s\n",
		   FUNC6(rcctl1 & (GEN7_RC_CTL_TO_MODE |
					FUNC0(1))));
	FUNC5(m, "Render Power Well: %s\n",
		   (pw_status & VLV_GTLC_PW_RENDER_STATUS_MASK) ? "Up" : "Down");
	FUNC5(m, "Media Power Well: %s\n",
		   (pw_status & VLV_GTLC_PW_MEDIA_STATUS_MASK) ? "Up" : "Down");

	FUNC4(m, "Render RC6 residency since boot:", VLV_GT_RENDER_RC6);
	FUNC4(m, "Media RC6 residency since boot:", VLV_GT_MEDIA_RC6);

	return FUNC2(m, NULL);
}