#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  mutex; TYPE_2__* state; } ;
struct tegra_dc {TYPE_3__ base; } ;
struct seq_file {struct drm_info_node* private; } ;
struct drm_info_node {TYPE_1__* info_ent; } ;
struct TYPE_9__ {unsigned int offset; int /*<<< orphan*/  name; } ;
struct TYPE_7__ {int /*<<< orphan*/  active; } ;
struct TYPE_6__ {struct tegra_dc* data; } ;

/* Variables and functions */
 unsigned int FUNC0 (TYPE_4__*) ; 
 int EBUSY ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct seq_file*,char*,int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct tegra_dc*,unsigned int) ; 
 TYPE_4__* tegra_dc_regs ; 

__attribute__((used)) static int FUNC5(struct seq_file *s, void *data)
{
	struct drm_info_node *node = s->private;
	struct tegra_dc *dc = node->info_ent->data;
	unsigned int i;
	int err = 0;

	FUNC1(&dc->base.mutex, NULL);

	if (!dc->base.state->active) {
		err = -EBUSY;
		goto unlock;
	}

	for (i = 0; i < FUNC0(tegra_dc_regs); i++) {
		unsigned int offset = tegra_dc_regs[i].offset;

		FUNC3(s, "%-40s %#05x %08x\n", tegra_dc_regs[i].name,
			   offset, FUNC4(dc, offset));
	}

unlock:
	FUNC2(&dc->base.mutex);
	return err;
}