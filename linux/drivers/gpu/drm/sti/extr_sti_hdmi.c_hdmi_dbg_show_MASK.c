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
struct sti_hdmi {int /*<<< orphan*/  regs; } ;
struct seq_file {struct drm_info_node* private; } ;
struct drm_info_node {TYPE_1__* info_ent; } ;
struct TYPE_2__ {scalar_t__ data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  HDMI_ACTIVE_VID_XMAX ; 
 int /*<<< orphan*/  HDMI_ACTIVE_VID_XMIN ; 
 int /*<<< orphan*/  HDMI_ACTIVE_VID_YMAX ; 
 int /*<<< orphan*/  HDMI_ACTIVE_VID_YMIN ; 
 int /*<<< orphan*/  HDMI_AUDIO_CFG ; 
 int /*<<< orphan*/  HDMI_AUDN ; 
 int /*<<< orphan*/  HDMI_CFG ; 
 int /*<<< orphan*/  HDMI_IFRAME_SLOT_AUDIO ; 
 int /*<<< orphan*/  HDMI_IFRAME_SLOT_AVI ; 
 int /*<<< orphan*/  HDMI_IFRAME_SLOT_VENDOR ; 
 int /*<<< orphan*/  HDMI_INT_EN ; 
 int /*<<< orphan*/  HDMI_SPDIF_FIFO_STATUS ; 
 int /*<<< orphan*/  HDMI_STA ; 
 int /*<<< orphan*/  HDMI_SW_DI_CFG ; 
 int /*<<< orphan*/  HDMI_SW_DI_N_HEAD_WORD ; 
 int /*<<< orphan*/  HDMI_SW_DI_N_PKT_WORD0 ; 
 int /*<<< orphan*/  HDMI_SW_DI_N_PKT_WORD1 ; 
 int /*<<< orphan*/  HDMI_SW_DI_N_PKT_WORD2 ; 
 int /*<<< orphan*/  HDMI_SW_DI_N_PKT_WORD3 ; 
 int /*<<< orphan*/  HDMI_SW_DI_N_PKT_WORD4 ; 
 int /*<<< orphan*/  HDMI_SW_DI_N_PKT_WORD5 ; 
 int /*<<< orphan*/  HDMI_SW_DI_N_PKT_WORD6 ; 
 int /*<<< orphan*/  FUNC3 (struct seq_file*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct seq_file*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct seq_file*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct sti_hdmi*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct seq_file*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct seq_file*,char) ; 

__attribute__((used)) static int FUNC9(struct seq_file *s, void *data)
{
	struct drm_info_node *node = s->private;
	struct sti_hdmi *hdmi = (struct sti_hdmi *)node->info_ent->data;

	FUNC7(s, "HDMI: (vaddr = 0x%p)", hdmi->regs);
	FUNC0("\n", HDMI_CFG);
	FUNC3(s, FUNC6(hdmi, HDMI_CFG));
	FUNC0("", HDMI_INT_EN);
	FUNC0("\n", HDMI_STA);
	FUNC4(s, FUNC6(hdmi, HDMI_STA));
	FUNC0("", HDMI_ACTIVE_VID_XMIN);
	FUNC8(s, '\t');
	FUNC2("Xmin:", FUNC6(hdmi, HDMI_ACTIVE_VID_XMIN));
	FUNC0("", HDMI_ACTIVE_VID_XMAX);
	FUNC8(s, '\t');
	FUNC2("Xmax:", FUNC6(hdmi, HDMI_ACTIVE_VID_XMAX));
	FUNC0("", HDMI_ACTIVE_VID_YMIN);
	FUNC8(s, '\t');
	FUNC2("Ymin:", FUNC6(hdmi, HDMI_ACTIVE_VID_YMIN));
	FUNC0("", HDMI_ACTIVE_VID_YMAX);
	FUNC8(s, '\t');
	FUNC2("Ymax:", FUNC6(hdmi, HDMI_ACTIVE_VID_YMAX));
	FUNC0("", HDMI_SW_DI_CFG);
	FUNC5(s, FUNC6(hdmi, HDMI_SW_DI_CFG));

	FUNC0("\n", HDMI_AUDIO_CFG);
	FUNC0("\n", HDMI_SPDIF_FIFO_STATUS);
	FUNC0("\n", HDMI_AUDN);

	FUNC7(s, "\n AVI Infoframe (Data Island slot N=%d):",
		   HDMI_IFRAME_SLOT_AVI);
	FUNC1(HDMI_SW_DI_N_HEAD_WORD, HDMI_IFRAME_SLOT_AVI);
	FUNC1(HDMI_SW_DI_N_PKT_WORD0, HDMI_IFRAME_SLOT_AVI);
	FUNC1(HDMI_SW_DI_N_PKT_WORD1, HDMI_IFRAME_SLOT_AVI);
	FUNC1(HDMI_SW_DI_N_PKT_WORD2, HDMI_IFRAME_SLOT_AVI);
	FUNC1(HDMI_SW_DI_N_PKT_WORD3, HDMI_IFRAME_SLOT_AVI);
	FUNC1(HDMI_SW_DI_N_PKT_WORD4, HDMI_IFRAME_SLOT_AVI);
	FUNC1(HDMI_SW_DI_N_PKT_WORD5, HDMI_IFRAME_SLOT_AVI);
	FUNC1(HDMI_SW_DI_N_PKT_WORD6, HDMI_IFRAME_SLOT_AVI);
	FUNC7(s, "\n\n AUDIO Infoframe (Data Island slot N=%d):",
		   HDMI_IFRAME_SLOT_AUDIO);
	FUNC1(HDMI_SW_DI_N_HEAD_WORD, HDMI_IFRAME_SLOT_AUDIO);
	FUNC1(HDMI_SW_DI_N_PKT_WORD0, HDMI_IFRAME_SLOT_AUDIO);
	FUNC1(HDMI_SW_DI_N_PKT_WORD1, HDMI_IFRAME_SLOT_AUDIO);
	FUNC1(HDMI_SW_DI_N_PKT_WORD2, HDMI_IFRAME_SLOT_AUDIO);
	FUNC1(HDMI_SW_DI_N_PKT_WORD3, HDMI_IFRAME_SLOT_AUDIO);
	FUNC1(HDMI_SW_DI_N_PKT_WORD4, HDMI_IFRAME_SLOT_AUDIO);
	FUNC1(HDMI_SW_DI_N_PKT_WORD5, HDMI_IFRAME_SLOT_AUDIO);
	FUNC1(HDMI_SW_DI_N_PKT_WORD6, HDMI_IFRAME_SLOT_AUDIO);
	FUNC7(s, "\n\n VENDOR SPECIFIC Infoframe (Data Island slot N=%d):",
		   HDMI_IFRAME_SLOT_VENDOR);
	FUNC1(HDMI_SW_DI_N_HEAD_WORD, HDMI_IFRAME_SLOT_VENDOR);
	FUNC1(HDMI_SW_DI_N_PKT_WORD0, HDMI_IFRAME_SLOT_VENDOR);
	FUNC1(HDMI_SW_DI_N_PKT_WORD1, HDMI_IFRAME_SLOT_VENDOR);
	FUNC1(HDMI_SW_DI_N_PKT_WORD2, HDMI_IFRAME_SLOT_VENDOR);
	FUNC1(HDMI_SW_DI_N_PKT_WORD3, HDMI_IFRAME_SLOT_VENDOR);
	FUNC1(HDMI_SW_DI_N_PKT_WORD4, HDMI_IFRAME_SLOT_VENDOR);
	FUNC1(HDMI_SW_DI_N_PKT_WORD5, HDMI_IFRAME_SLOT_VENDOR);
	FUNC1(HDMI_SW_DI_N_PKT_WORD6, HDMI_IFRAME_SLOT_VENDOR);
	FUNC8(s, '\n');
	return 0;
}