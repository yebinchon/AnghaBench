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
struct sti_hda {scalar_t__ video_dacs_ctrl; scalar_t__ regs; } ;
struct seq_file {struct drm_info_node* private; } ;
struct drm_info_node {TYPE_1__* info_ent; } ;
struct TYPE_2__ {scalar_t__ data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ HDA_ANA_ANC_CTRL ; 
 scalar_t__ HDA_ANA_CFG ; 
 scalar_t__ HDA_ANA_SCALE_CTRL_CB ; 
 scalar_t__ HDA_ANA_SCALE_CTRL_CR ; 
 scalar_t__ HDA_ANA_SCALE_CTRL_Y ; 
 scalar_t__ HDA_ANA_SRC_C_CFG ; 
 scalar_t__ HDA_ANA_SRC_Y_CFG ; 
 scalar_t__ HDA_SYNC_AWGI ; 
 int /*<<< orphan*/  FUNC1 (struct seq_file*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct seq_file*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct seq_file*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct seq_file*,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (struct seq_file*,char) ; 

__attribute__((used)) static int FUNC7(struct seq_file *s, void *data)
{
	struct drm_info_node *node = s->private;
	struct sti_hda *hda = (struct sti_hda *)node->info_ent->data;

	FUNC5(s, "HD Analog: (vaddr = 0x%p)", hda->regs);
	FUNC0(HDA_ANA_CFG);
	FUNC2(s, FUNC4(hda->regs + HDA_ANA_CFG));
	FUNC0(HDA_ANA_SCALE_CTRL_Y);
	FUNC0(HDA_ANA_SCALE_CTRL_CB);
	FUNC0(HDA_ANA_SCALE_CTRL_CR);
	FUNC0(HDA_ANA_ANC_CTRL);
	FUNC0(HDA_ANA_SRC_Y_CFG);
	FUNC0(HDA_ANA_SRC_C_CFG);
	FUNC1(s, hda->regs + HDA_SYNC_AWGI);
	if (hda->video_dacs_ctrl)
		FUNC3(s, hda->video_dacs_ctrl);
	FUNC6(s, '\n');
	return 0;
}