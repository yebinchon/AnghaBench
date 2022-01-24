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
struct its_vpe {int dummy; } ;
struct its_cmd_info {int cmd_type; } ;
struct irq_data {int dummy; } ;

/* Variables and functions */
#define  DESCHEDULE_VPE 130 
 int EINVAL ; 
#define  INVALL_VPE 129 
#define  SCHEDULE_VPE 128 
 struct its_vpe* FUNC0 (struct irq_data*) ; 
 int /*<<< orphan*/  FUNC1 (struct its_vpe*) ; 
 int /*<<< orphan*/  FUNC2 (struct its_vpe*) ; 
 int /*<<< orphan*/  FUNC3 (struct its_vpe*) ; 

__attribute__((used)) static int FUNC4(struct irq_data *d, void *vcpu_info)
{
	struct its_vpe *vpe = FUNC0(d);
	struct its_cmd_info *info = vcpu_info;

	switch (info->cmd_type) {
	case SCHEDULE_VPE:
		FUNC3(vpe);
		return 0;

	case DESCHEDULE_VPE:
		FUNC1(vpe);
		return 0;

	case INVALL_VPE:
		FUNC2(vpe);
		return 0;

	default:
		return -EINVAL;
	}
}