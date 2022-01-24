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
struct seq_file {int dummy; } ;

/* Variables and functions */
 int TVO_VIP_CLIP_MASK ; 
 int TVO_VIP_CLIP_SHIFT ; 
 int TVO_VIP_REORDER_B_SHIFT ; 
 size_t TVO_VIP_REORDER_CB_B_SEL ; 
 size_t TVO_VIP_REORDER_CR_R_SEL ; 
 int TVO_VIP_REORDER_G_SHIFT ; 
 int TVO_VIP_REORDER_MASK ; 
 int TVO_VIP_REORDER_R_SHIFT ; 
 size_t TVO_VIP_REORDER_Y_G_SEL ; 
 int TVO_VIP_RND_MASK ; 
 int TVO_VIP_RND_SHIFT ; 
 int TVO_VIP_SEL_INPUT_MASK ; 
 int /*<<< orphan*/  FUNC0 (struct seq_file*,char*,char*,char* const,...) ; 
 int /*<<< orphan*/  FUNC1 (struct seq_file*,char) ; 
 int /*<<< orphan*/  FUNC2 (struct seq_file*,char*) ; 

__attribute__((used)) static void FUNC3(struct seq_file *s, int val)
{
	int r, g, b, tmp, mask;
	char *const reorder[] = {"Y_G", "Cb_B", "Cr_R"};
	char *const clipping[] = {"No", "EAV/SAV", "Limited range RGB/Y",
				  "Limited range Cb/Cr", "decided by register"};
	char *const round[] = {"8-bit", "10-bit", "12-bit"};
	char *const input_sel[] = {"Main (color matrix enabled)",
				   "Main (color matrix by-passed)",
				   "", "", "", "", "", "",
				   "Aux (color matrix enabled)",
				   "Aux (color matrix by-passed)",
				   "", "", "", "", "", "Force value"};

	FUNC1(s, '\t');
	mask = TVO_VIP_REORDER_MASK << TVO_VIP_REORDER_R_SHIFT;
	r = (val & mask) >> TVO_VIP_REORDER_R_SHIFT;
	mask = TVO_VIP_REORDER_MASK << TVO_VIP_REORDER_G_SHIFT;
	g = (val & mask) >> TVO_VIP_REORDER_G_SHIFT;
	mask = TVO_VIP_REORDER_MASK << TVO_VIP_REORDER_B_SHIFT;
	b = (val & mask) >> TVO_VIP_REORDER_B_SHIFT;
	FUNC0(s, "%-24s %s->%s %s->%s %s->%s\n", "Reorder:",
		   reorder[r], reorder[TVO_VIP_REORDER_CR_R_SEL],
		   reorder[g], reorder[TVO_VIP_REORDER_Y_G_SEL],
		   reorder[b], reorder[TVO_VIP_REORDER_CB_B_SEL]);
	FUNC2(s, "\t\t\t\t\t");
	mask = TVO_VIP_CLIP_MASK << TVO_VIP_CLIP_SHIFT;
	tmp = (val & mask) >> TVO_VIP_CLIP_SHIFT;
	FUNC0(s, "%-24s %s\n", "Clipping:", clipping[tmp]);
	FUNC2(s, "\t\t\t\t\t");
	mask = TVO_VIP_RND_MASK << TVO_VIP_RND_SHIFT;
	tmp = (val & mask) >> TVO_VIP_RND_SHIFT;
	FUNC0(s, "%-24s input data rounded to %s per component\n",
		   "Round:", round[tmp]);
	FUNC2(s, "\t\t\t\t\t");
	tmp = (val & TVO_VIP_SEL_INPUT_MASK);
	FUNC0(s, "%-24s %s", "Input selection:", input_sel[tmp]);
}