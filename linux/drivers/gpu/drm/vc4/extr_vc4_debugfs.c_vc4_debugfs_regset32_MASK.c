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
struct seq_file {scalar_t__ private; } ;
struct drm_printer {int dummy; } ;
struct drm_info_node {TYPE_1__* info_ent; } ;
struct debugfs_regset32 {int dummy; } ;
struct TYPE_2__ {struct debugfs_regset32* data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct drm_printer*,struct debugfs_regset32*) ; 
 struct drm_printer FUNC1 (struct seq_file*) ; 

__attribute__((used)) static int FUNC2(struct seq_file *m, void *unused)
{
	struct drm_info_node *node = (struct drm_info_node *)m->private;
	struct debugfs_regset32 *regset = node->info_ent->data;
	struct drm_printer p = FUNC1(m);

	FUNC0(&p, regset);

	return 0;
}