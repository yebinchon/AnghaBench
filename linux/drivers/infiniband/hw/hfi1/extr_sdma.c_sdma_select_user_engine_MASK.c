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
typedef  size_t u8 ;
typedef  size_t u32 ;
struct sdma_rht_node {struct sdma_rht_map_elem** map; } ;
struct sdma_rht_map_elem {size_t mask; struct sdma_engine** sde; } ;
struct sdma_engine {int dummy; } ;
struct hfi1_devdata {int /*<<< orphan*/  sdma_rht; } ;
struct TYPE_2__ {int nr_cpus_allowed; } ;

/* Variables and functions */
 TYPE_1__* current ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 struct sdma_rht_node* FUNC2 (int /*<<< orphan*/ ,unsigned long*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  sdma_rht_params ; 
 struct sdma_engine* FUNC3 (struct hfi1_devdata*,size_t,size_t) ; 
 unsigned long FUNC4 () ; 

struct sdma_engine *FUNC5(struct hfi1_devdata *dd,
					    u32 selector, u8 vl)
{
	struct sdma_rht_node *rht_node;
	struct sdma_engine *sde = NULL;
	unsigned long cpu_id;

	/*
	 * To ensure that always the same sdma engine(s) will be
	 * selected make sure the process is pinned to this CPU only.
	 */
	if (current->nr_cpus_allowed != 1)
		goto out;

	cpu_id = FUNC4();
	FUNC0();
	rht_node = FUNC2(dd->sdma_rht, &cpu_id,
					  sdma_rht_params);

	if (rht_node && rht_node->map[vl]) {
		struct sdma_rht_map_elem *map = rht_node->map[vl];

		sde = map->sde[selector & map->mask];
	}
	FUNC1();

	if (sde)
		return sde;

out:
	return FUNC3(dd, selector, vl);
}