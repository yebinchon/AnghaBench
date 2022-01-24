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
struct its_device {TYPE_1__* its; } ;
struct its_cmd_info {int cmd_type; } ;
struct irq_data {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  is_v4; } ;

/* Variables and functions */
 int EINVAL ; 
#define  GET_VLPI 131 
#define  MAP_VLPI 130 
#define  PROP_UPDATE_AND_INV_VLPI 129 
#define  PROP_UPDATE_VLPI 128 
 struct its_device* FUNC0 (struct irq_data*) ; 
 int FUNC1 (struct irq_data*,struct its_cmd_info*) ; 
 int FUNC2 (struct irq_data*,struct its_cmd_info*) ; 
 int FUNC3 (struct irq_data*,struct its_cmd_info*) ; 
 int FUNC4 (struct irq_data*) ; 

__attribute__((used)) static int FUNC5(struct irq_data *d, void *vcpu_info)
{
	struct its_device *its_dev = FUNC0(d);
	struct its_cmd_info *info = vcpu_info;

	/* Need a v4 ITS */
	if (!its_dev->its->is_v4)
		return -EINVAL;

	/* Unmap request? */
	if (!info)
		return FUNC4(d);

	switch (info->cmd_type) {
	case MAP_VLPI:
		return FUNC2(d, info);

	case GET_VLPI:
		return FUNC1(d, info);

	case PROP_UPDATE_VLPI:
	case PROP_UPDATE_AND_INV_VLPI:
		return FUNC3(d, info);

	default:
		return -EINVAL;
	}
}