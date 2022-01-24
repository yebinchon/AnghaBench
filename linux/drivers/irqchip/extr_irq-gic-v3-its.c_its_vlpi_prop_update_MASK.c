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
struct TYPE_2__ {int /*<<< orphan*/  vm; } ;
struct its_device {TYPE_1__ event_map; } ;
struct its_cmd_info {scalar_t__ cmd_type; int config; } ;
struct irq_data {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int LPI_PROP_ENABLED ; 
 scalar_t__ PROP_UPDATE_AND_INV_VLPI ; 
 struct its_device* FUNC0 (struct irq_data*) ; 
 int /*<<< orphan*/  FUNC1 (struct irq_data*) ; 
 int /*<<< orphan*/  FUNC2 (struct irq_data*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct irq_data*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct irq_data*,int,int) ; 

__attribute__((used)) static int FUNC5(struct irq_data *d, struct its_cmd_info *info)
{
	struct its_device *its_dev = FUNC0(d);

	if (!its_dev->event_map.vm || !FUNC1(d))
		return -EINVAL;

	if (info->cmd_type == PROP_UPDATE_AND_INV_VLPI)
		FUNC3(d, 0xff, info->config);
	else
		FUNC4(d, 0xff, info->config);
	FUNC2(d, !!(info->config & LPI_PROP_ENABLED));

	return 0;
}