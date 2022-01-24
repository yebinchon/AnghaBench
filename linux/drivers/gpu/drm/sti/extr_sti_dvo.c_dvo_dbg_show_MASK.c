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
struct sti_dvo {scalar_t__ regs; } ;
struct seq_file {struct drm_info_node* private; } ;
struct drm_info_node {TYPE_1__* info_ent; } ;
struct TYPE_2__ {scalar_t__ data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DVO_AWG_DIGSYNC_CTRL ; 
 scalar_t__ DVO_DIGSYNC_INSTR_I ; 
 int /*<<< orphan*/  DVO_DOF_CFG ; 
 int /*<<< orphan*/  DVO_LUT_PROG_HIGH ; 
 int /*<<< orphan*/  DVO_LUT_PROG_LOW ; 
 int /*<<< orphan*/  DVO_LUT_PROG_MID ; 
 int /*<<< orphan*/  FUNC1 (struct seq_file*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct seq_file*,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct seq_file*,char) ; 

__attribute__((used)) static int FUNC4(struct seq_file *s, void *data)
{
	struct drm_info_node *node = s->private;
	struct sti_dvo *dvo = (struct sti_dvo *)node->info_ent->data;

	FUNC2(s, "DVO: (vaddr = 0x%p)", dvo->regs);
	FUNC0(DVO_AWG_DIGSYNC_CTRL);
	FUNC0(DVO_DOF_CFG);
	FUNC0(DVO_LUT_PROG_LOW);
	FUNC0(DVO_LUT_PROG_MID);
	FUNC0(DVO_LUT_PROG_HIGH);
	FUNC1(s, dvo->regs + DVO_DIGSYNC_INSTR_I);
	FUNC3(s, '\n');
	return 0;
}