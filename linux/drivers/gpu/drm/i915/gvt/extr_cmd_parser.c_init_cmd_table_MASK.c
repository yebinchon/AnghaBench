#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct intel_gvt {int dummy; } ;
struct cmd_info {int /*<<< orphan*/  name; } ;
struct cmd_entry {TYPE_1__* info; int /*<<< orphan*/  hlist; } ;
struct TYPE_3__ {unsigned int devices; scalar_t__ opcode; int /*<<< orphan*/  rings; int /*<<< orphan*/  flag; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*) ; 
 int EEXIST ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ OP_MI_NOOP ; 
 int /*<<< orphan*/  FUNC2 (struct intel_gvt*,struct cmd_entry*) ; 
 TYPE_1__* cmd_info ; 
 struct cmd_info* FUNC3 (struct intel_gvt*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 unsigned int FUNC6 (struct intel_gvt*) ; 
 int /*<<< orphan*/  FUNC7 (struct cmd_entry*) ; 
 struct cmd_entry* FUNC8 (int,int /*<<< orphan*/ ) ; 
 int mi_noop_index ; 

__attribute__((used)) static int FUNC9(struct intel_gvt *gvt)
{
	int i;
	struct cmd_entry *e;
	const struct cmd_info *info;
	unsigned int gen_type;

	gen_type = FUNC6(gvt);

	for (i = 0; i < FUNC0(cmd_info); i++) {
		if (!(cmd_info[i].devices & gen_type))
			continue;

		e = FUNC8(sizeof(*e), GFP_KERNEL);
		if (!e)
			return -ENOMEM;

		e->info = &cmd_info[i];
		info = FUNC3(gvt,
				e->info->opcode, e->info->rings);
		if (info) {
			FUNC5("%s %s duplicated\n", e->info->name,
					info->name);
			FUNC7(e);
			return -EEXIST;
		}
		if (cmd_info[i].opcode == OP_MI_NOOP)
			mi_noop_index = i;

		FUNC1(&e->hlist);
		FUNC2(gvt, e);
		FUNC4("add %-30s op %04x flag %x devs %02x rings %02x\n",
				e->info->name, e->info->opcode, e->info->flag,
				e->info->devices, e->info->rings);
	}
	return 0;
}