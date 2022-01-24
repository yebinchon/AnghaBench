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
struct seq_file {int /*<<< orphan*/  private; } ;
struct intel_opregion {int /*<<< orphan*/  vbt_size; scalar_t__ vbt; } ;
struct TYPE_2__ {struct intel_opregion opregion; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct seq_file*,scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct seq_file *m, void *unused)
{
	struct intel_opregion *opregion = &FUNC0(m->private)->opregion;

	if (opregion->vbt)
		FUNC1(m, opregion->vbt, opregion->vbt_size);

	return 0;
}