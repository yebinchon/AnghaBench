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
struct sti_cursor {scalar_t__ regs; int /*<<< orphan*/  plane; } ;
struct seq_file {struct drm_info_node* private; } ;
struct drm_info_node {TYPE_1__* info_ent; } ;
struct TYPE_2__ {scalar_t__ data; } ;

/* Variables and functions */
 scalar_t__ CUR_AWE ; 
 scalar_t__ CUR_AWS ; 
 scalar_t__ CUR_CML ; 
 scalar_t__ CUR_CTL ; 
 scalar_t__ CUR_PML ; 
 scalar_t__ CUR_PMP ; 
 scalar_t__ CUR_SIZE ; 
 scalar_t__ CUR_VPO ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct seq_file*,struct sti_cursor*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct seq_file*,struct sti_cursor*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct seq_file*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct seq_file*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (struct seq_file*,char*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (struct seq_file*,char) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC9(struct seq_file *s, void *data)
{
	struct drm_info_node *node = s->private;
	struct sti_cursor *cursor = (struct sti_cursor *)node->info_ent->data;

	FUNC6(s, "%s: (vaddr = 0x%p)",
		   FUNC8(&cursor->plane), cursor->regs);

	FUNC0(CUR_CTL);
	FUNC0(CUR_VPO);
	FUNC4(s, FUNC5(cursor->regs + CUR_VPO));
	FUNC0(CUR_PML);
	FUNC2(s, cursor, FUNC5(cursor->regs + CUR_PML));
	FUNC0(CUR_PMP);
	FUNC0(CUR_SIZE);
	FUNC3(s, FUNC5(cursor->regs + CUR_SIZE));
	FUNC0(CUR_CML);
	FUNC1(s, cursor, FUNC5(cursor->regs + CUR_CML));
	FUNC0(CUR_AWS);
	FUNC0(CUR_AWE);
	FUNC7(s, '\n');
	return 0;
}