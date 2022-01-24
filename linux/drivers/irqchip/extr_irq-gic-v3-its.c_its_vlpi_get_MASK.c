#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  size_t u32 ;
struct TYPE_4__ {int /*<<< orphan*/  vlpi_lock; TYPE_1__* vlpi_maps; int /*<<< orphan*/  vm; } ;
struct its_device {TYPE_2__ event_map; } ;
struct its_cmd_info {TYPE_1__* map; } ;
struct irq_data {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  vm; } ;

/* Variables and functions */
 int EINVAL ; 
 struct its_device* FUNC0 (struct irq_data*) ; 
 size_t FUNC1 (struct irq_data*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct irq_data *d, struct its_cmd_info *info)
{
	struct its_device *its_dev = FUNC0(d);
	u32 event = FUNC1(d);
	int ret = 0;

	FUNC2(&its_dev->event_map.vlpi_lock);

	if (!its_dev->event_map.vm ||
	    !its_dev->event_map.vlpi_maps[event].vm) {
		ret = -EINVAL;
		goto out;
	}

	/* Copy our mapping information to the incoming request */
	*info->map = its_dev->event_map.vlpi_maps[event];

out:
	FUNC3(&its_dev->event_map.vlpi_lock);
	return ret;
}