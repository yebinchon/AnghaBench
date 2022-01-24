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
struct sti_vid {scalar_t__ regs; } ;
struct seq_file {struct drm_info_node* private; } ;
struct drm_info_node {TYPE_1__* info_ent; } ;
struct TYPE_2__ {scalar_t__ data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ VID_ALP ; 
 scalar_t__ VID_BC ; 
 scalar_t__ VID_CLF ; 
 scalar_t__ VID_CSAT ; 
 scalar_t__ VID_CTL ; 
 scalar_t__ VID_KEY1 ; 
 scalar_t__ VID_KEY2 ; 
 scalar_t__ VID_MPR0 ; 
 scalar_t__ VID_MPR1 ; 
 scalar_t__ VID_MPR2 ; 
 scalar_t__ VID_MPR3 ; 
 scalar_t__ VID_MST ; 
 scalar_t__ VID_TINT ; 
 scalar_t__ VID_VPO ; 
 scalar_t__ VID_VPS ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct seq_file*,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct seq_file*,char) ; 
 int /*<<< orphan*/  FUNC4 (struct seq_file*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct seq_file*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct seq_file*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct seq_file*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct seq_file *s, void *arg)
{
	struct drm_info_node *node = s->private;
	struct sti_vid *vid = (struct sti_vid *)node->info_ent->data;

	FUNC2(s, "VID: (vaddr= 0x%p)", vid->regs);

	FUNC0(VID_CTL);
	FUNC4(s, FUNC1(vid->regs + VID_CTL));
	FUNC0(VID_ALP);
	FUNC0(VID_CLF);
	FUNC0(VID_VPO);
	FUNC6(s, FUNC1(vid->regs + VID_VPO));
	FUNC0(VID_VPS);
	FUNC7(s, FUNC1(vid->regs + VID_VPS));
	FUNC0(VID_KEY1);
	FUNC0(VID_KEY2);
	FUNC0(VID_MPR0);
	FUNC0(VID_MPR1);
	FUNC0(VID_MPR2);
	FUNC0(VID_MPR3);
	FUNC0(VID_MST);
	FUNC5(s, FUNC1(vid->regs + VID_MST));
	FUNC0(VID_BC);
	FUNC0(VID_TINT);
	FUNC0(VID_CSAT);
	FUNC3(s, '\n');
	return 0;
}