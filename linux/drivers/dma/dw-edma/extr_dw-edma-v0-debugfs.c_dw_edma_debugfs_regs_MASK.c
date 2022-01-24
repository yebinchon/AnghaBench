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
struct dentry {int dummy; } ;
struct debugfs_entries {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct debugfs_entries const*) ; 
 struct debugfs_entries const FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  REGISTERS_STR ; 
 int /*<<< orphan*/  base_dir ; 
 int /*<<< orphan*/  ctrl ; 
 int /*<<< orphan*/  ctrl_data_arb_prior ; 
 struct dentry* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct debugfs_entries const*,int,struct dentry*) ; 
 int /*<<< orphan*/  FUNC4 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC5 (struct dentry*) ; 

__attribute__((used)) static void FUNC6(void)
{
	const struct debugfs_entries debugfs_regs[] = {
		FUNC1(ctrl_data_arb_prior),
		FUNC1(ctrl),
	};
	struct dentry *regs_dir;
	int nr_entries;

	regs_dir = FUNC2(REGISTERS_STR, base_dir);
	if (!regs_dir)
		return;

	nr_entries = FUNC0(debugfs_regs);
	FUNC3(debugfs_regs, nr_entries, regs_dir);

	FUNC5(regs_dir);
	FUNC4(regs_dir);
}