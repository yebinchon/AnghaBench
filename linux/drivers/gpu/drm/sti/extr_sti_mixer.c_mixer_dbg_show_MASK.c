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
struct sti_mixer {scalar_t__ regs; } ;
struct seq_file {struct drm_info_node* private; } ;
struct drm_info_node {TYPE_1__* info_ent; } ;
struct TYPE_2__ {scalar_t__ data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ GAM_MIXER_ACT ; 
 scalar_t__ GAM_MIXER_AVO ; 
 scalar_t__ GAM_MIXER_AVS ; 
 scalar_t__ GAM_MIXER_BCO ; 
 scalar_t__ GAM_MIXER_BCS ; 
 scalar_t__ GAM_MIXER_BKC ; 
 scalar_t__ GAM_MIXER_CRB ; 
 scalar_t__ GAM_MIXER_CTL ; 
 scalar_t__ GAM_MIXER_MBP ; 
 scalar_t__ GAM_MIXER_MX0 ; 
 int /*<<< orphan*/  FUNC1 (struct seq_file*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct seq_file*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct seq_file*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct seq_file*,char*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct seq_file*,char) ; 
 int /*<<< orphan*/  FUNC6 (struct sti_mixer*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (struct sti_mixer*) ; 

__attribute__((used)) static int FUNC8(struct seq_file *s, void *arg)
{
	struct drm_info_node *node = s->private;
	struct sti_mixer *mixer = (struct sti_mixer *)node->info_ent->data;

	FUNC4(s, "%s: (vaddr = 0x%p)",
		   FUNC7(mixer), mixer->regs);

	FUNC0(GAM_MIXER_CTL);
	FUNC2(s, FUNC6(mixer, GAM_MIXER_CTL));
	FUNC0(GAM_MIXER_BKC);
	FUNC0(GAM_MIXER_BCO);
	FUNC0(GAM_MIXER_BCS);
	FUNC0(GAM_MIXER_AVO);
	FUNC0(GAM_MIXER_AVS);
	FUNC0(GAM_MIXER_CRB);
	FUNC1(s, FUNC6(mixer, GAM_MIXER_CRB));
	FUNC0(GAM_MIXER_ACT);
	FUNC0(GAM_MIXER_MBP);
	FUNC0(GAM_MIXER_MX0);
	FUNC3(s, mixer->regs + GAM_MIXER_MX0);
	FUNC5(s, '\n');
	return 0;
}