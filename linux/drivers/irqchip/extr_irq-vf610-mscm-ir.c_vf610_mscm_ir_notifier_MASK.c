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
struct notifier_block {int dummy; } ;

/* Variables and functions */
#define  CPU_CLUSTER_PM_ENTER 130 
#define  CPU_CLUSTER_PM_ENTER_FAILED 129 
#define  CPU_CLUSTER_PM_EXIT 128 
 int NOTIFY_OK ; 
 int /*<<< orphan*/  mscm_ir_data ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct notifier_block *self,
				  unsigned long cmd, void *v)
{
	switch (cmd) {
	case CPU_CLUSTER_PM_ENTER:
		FUNC1(mscm_ir_data);
		break;
	case CPU_CLUSTER_PM_ENTER_FAILED:
	case CPU_CLUSTER_PM_EXIT:
		FUNC0(mscm_ir_data);
		break;
	}

	return NOTIFY_OK;
}