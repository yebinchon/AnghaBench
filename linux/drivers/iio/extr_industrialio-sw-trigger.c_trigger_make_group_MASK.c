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
struct TYPE_2__ {int /*<<< orphan*/  ci_name; } ;
struct config_group {TYPE_1__ cg_item; } ;
struct iio_sw_trigger {struct config_group group; } ;

/* Variables and functions */
 struct config_group* FUNC0 (struct iio_sw_trigger*) ; 
 scalar_t__ FUNC1 (struct iio_sw_trigger*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char*,char const*) ; 
 struct iio_sw_trigger* FUNC3 (int /*<<< orphan*/ ,char const*) ; 

__attribute__((used)) static struct config_group *FUNC4(struct config_group *group,
					       const char *name)
{
	struct iio_sw_trigger *t;

	t = FUNC3(group->cg_item.ci_name, name);
	if (FUNC1(t))
		return FUNC0(t);

	FUNC2(&t->group.cg_item, "%s", name);

	return &t->group;
}