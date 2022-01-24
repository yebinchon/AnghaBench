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
typedef  size_t u32 ;
struct its_vlpi_map {scalar_t__ vm; int /*<<< orphan*/  properties; } ;
struct TYPE_2__ {scalar_t__ vm; int /*<<< orphan*/  vlpi_lock; int /*<<< orphan*/  nr_vlpis; struct its_vlpi_map* vlpi_maps; int /*<<< orphan*/  nr_lpis; } ;
struct its_device {TYPE_1__ event_map; int /*<<< orphan*/  its; } ;
struct its_cmd_info {struct its_vlpi_map* map; } ;
struct irq_data {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 struct its_device* FUNC0 (struct irq_data*) ; 
 scalar_t__ FUNC1 (struct irq_data*) ; 
 int /*<<< orphan*/  FUNC2 (struct irq_data*) ; 
 size_t FUNC3 (struct irq_data*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct its_device*,size_t) ; 
 int /*<<< orphan*/  FUNC6 (struct its_device*,size_t) ; 
 int /*<<< orphan*/  FUNC7 (struct its_device*,size_t) ; 
 struct its_vlpi_map* FUNC8 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct irq_data*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC12(struct irq_data *d, struct its_cmd_info *info)
{
	struct its_device *its_dev = FUNC0(d);
	u32 event = FUNC3(d);
	int ret = 0;

	if (!info->map)
		return -EINVAL;

	FUNC10(&its_dev->event_map.vlpi_lock);

	if (!its_dev->event_map.vm) {
		struct its_vlpi_map *maps;

		maps = FUNC8(its_dev->event_map.nr_lpis, sizeof(*maps),
			       GFP_KERNEL);
		if (!maps) {
			ret = -ENOMEM;
			goto out;
		}

		its_dev->event_map.vm = info->map->vm;
		its_dev->event_map.vlpi_maps = maps;
	} else if (its_dev->event_map.vm != info->map->vm) {
		ret = -EINVAL;
		goto out;
	}

	/* Get our private copy of the mapping information */
	its_dev->event_map.vlpi_maps[event] = *info->map;

	if (FUNC1(d)) {
		/* Already mapped, move it around */
		FUNC7(its_dev, event);
	} else {
		/* Ensure all the VPEs are mapped on this ITS */
		FUNC4(its_dev->its, info->map->vm);

		/*
		 * Flag the interrupt as forwarded so that we can
		 * start poking the virtual property table.
		 */
		FUNC2(d);

		/* Write out the property to the prop table */
		FUNC9(d, 0xff, info->map->properties);

		/* Drop the physical mapping */
		FUNC5(its_dev, event);

		/* and install the virtual one */
		FUNC6(its_dev, event);

		/* Increment the number of VLPIs */
		its_dev->event_map.nr_vlpis++;
	}

out:
	FUNC11(&its_dev->event_map.vlpi_lock);
	return ret;
}