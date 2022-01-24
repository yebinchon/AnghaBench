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
struct sti_gdp_node {struct sti_gdp_node* gam_gdp_cml; struct sti_gdp_node* gam_gdp_ppt; struct sti_gdp_node* gam_gdp_key2; struct sti_gdp_node* gam_gdp_key1; struct sti_gdp_node* gam_gdp_nvn; struct sti_gdp_node* gam_gdp_size; struct sti_gdp_node* gam_gdp_pmp; struct sti_gdp_node* gam_gdp_pml; struct sti_gdp_node* gam_gdp_vps; struct sti_gdp_node* gam_gdp_vpo; struct sti_gdp_node* gam_gdp_agc; struct sti_gdp_node* gam_gdp_ctl; } ;
struct seq_file {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct seq_file*,struct sti_gdp_node*) ; 
 int /*<<< orphan*/  FUNC1 (struct seq_file*,struct sti_gdp_node*) ; 
 int /*<<< orphan*/  FUNC2 (struct seq_file*,struct sti_gdp_node*) ; 
 int /*<<< orphan*/  FUNC3 (struct seq_file*,struct sti_gdp_node*) ; 
 int /*<<< orphan*/  FUNC4 (struct seq_file*,struct sti_gdp_node*) ; 
 int /*<<< orphan*/  FUNC5 (struct seq_file*,char*,struct sti_gdp_node*) ; 

__attribute__((used)) static void FUNC6(struct seq_file *s, struct sti_gdp_node *node)
{
	FUNC5(s, "\t@:0x%p", node);
	FUNC5(s, "\n\tCTL  0x%08X", node->gam_gdp_ctl);
	FUNC0(s, node->gam_gdp_ctl);
	FUNC5(s, "\n\tAGC  0x%08X", node->gam_gdp_agc);
	FUNC5(s, "\n\tVPO  0x%08X", node->gam_gdp_vpo);
	FUNC3(s, node->gam_gdp_vpo);
	FUNC5(s, "\n\tVPS  0x%08X", node->gam_gdp_vps);
	FUNC4(s, node->gam_gdp_vps);
	FUNC5(s, "\n\tPML  0x%08X", node->gam_gdp_pml);
	FUNC5(s, "\n\tPMP  0x%08X", node->gam_gdp_pmp);
	FUNC5(s, "\n\tSIZE 0x%08X", node->gam_gdp_size);
	FUNC2(s, node->gam_gdp_size);
	FUNC5(s, "\n\tNVN  0x%08X", node->gam_gdp_nvn);
	FUNC5(s, "\n\tKEY1 0x%08X", node->gam_gdp_key1);
	FUNC5(s, "\n\tKEY2 0x%08X", node->gam_gdp_key2);
	FUNC5(s, "\n\tPPT  0x%08X", node->gam_gdp_ppt);
	FUNC1(s, node->gam_gdp_ppt);
	FUNC5(s, "\n\tCML  0x%08X\n", node->gam_gdp_cml);
}