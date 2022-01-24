#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
typedef  size_t u32 ;
struct its_vlpi_map {int vintid; int properties; } ;
struct TYPE_5__ {struct its_vlpi_map* vlpi_maps; TYPE_1__* vm; } ;
struct its_device {TYPE_2__ event_map; } ;
struct irq_data {int hwirq; } ;
typedef  int irq_hw_number_t ;
struct TYPE_6__ {int flags; void* prop_table_va; } ;
struct TYPE_4__ {int /*<<< orphan*/  vprop_page; } ;

/* Variables and functions */
 int LPI_PROP_GROUP1 ; 
 int RDIST_FLAGS_PROPBASE_NEEDS_FLUSHING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int*,int) ; 
 TYPE_3__* gic_rdists ; 
 struct its_device* FUNC2 (struct irq_data*) ; 
 scalar_t__ FUNC3 (struct irq_data*) ; 
 int /*<<< orphan*/  ishst ; 
 size_t FUNC4 (struct irq_data*) ; 
 void* FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct irq_data *d, u8 clr, u8 set)
{
	irq_hw_number_t hwirq;
	void *va;
	u8 *cfg;

	if (FUNC3(d)) {
		struct its_device *its_dev = FUNC2(d);
		u32 event = FUNC4(d);
		struct its_vlpi_map *map;

		va = FUNC5(its_dev->event_map.vm->vprop_page);
		map = &its_dev->event_map.vlpi_maps[event];
		hwirq = map->vintid;

		/* Remember the updated property */
		map->properties &= ~clr;
		map->properties |= set | LPI_PROP_GROUP1;
	} else {
		va = gic_rdists->prop_table_va;
		hwirq = d->hwirq;
	}

	cfg = va + hwirq - 8192;
	*cfg &= ~clr;
	*cfg |= set | LPI_PROP_GROUP1;

	/*
	 * Make the above write visible to the redistributors.
	 * And yes, we're flushing exactly: One. Single. Byte.
	 * Humpf...
	 */
	if (gic_rdists->flags & RDIST_FLAGS_PROPBASE_NEEDS_FLUSHING)
		FUNC1(cfg, sizeof(*cfg));
	else
		FUNC0(ishst);
}