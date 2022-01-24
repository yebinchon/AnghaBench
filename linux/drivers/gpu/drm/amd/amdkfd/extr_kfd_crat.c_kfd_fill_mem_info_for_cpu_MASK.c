#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint64_t ;
struct crat_subtype_memory {int length; int proximity_domain; int /*<<< orphan*/  length_high; int /*<<< orphan*/  length_low; int /*<<< orphan*/  flags; int /*<<< orphan*/  type; } ;
struct TYPE_3__ {int /*<<< orphan*/ * node_zones; } ;
typedef  TYPE_1__ pg_data_t ;

/* Variables and functions */
 int /*<<< orphan*/  CRAT_SUBTYPE_FLAGS_ENABLED ; 
 int /*<<< orphan*/  CRAT_SUBTYPE_MEMORY_AFFINITY ; 
 int ENOMEM ; 
 int MAX_NR_ZONES ; 
 TYPE_1__* FUNC0 (int) ; 
 int /*<<< orphan*/  PAGE_SHIFT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct crat_subtype_memory*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(int numa_node_id, int *avail_size,
			int proximity_domain,
			struct crat_subtype_memory *sub_type_hdr)
{
	uint64_t mem_in_bytes = 0;
	pg_data_t *pgdat;
	int zone_type;

	*avail_size -= sizeof(struct crat_subtype_memory);
	if (*avail_size < 0)
		return -ENOMEM;

	FUNC2(sub_type_hdr, 0, sizeof(struct crat_subtype_memory));

	/* Fill in subtype header data */
	sub_type_hdr->type = CRAT_SUBTYPE_MEMORY_AFFINITY;
	sub_type_hdr->length = sizeof(struct crat_subtype_memory);
	sub_type_hdr->flags = CRAT_SUBTYPE_FLAGS_ENABLED;

	/* Fill in Memory Subunit data */

	/* Unlike si_meminfo, si_meminfo_node is not exported. So
	 * the following lines are duplicated from si_meminfo_node
	 * function
	 */
	pgdat = FUNC0(numa_node_id);
	for (zone_type = 0; zone_type < MAX_NR_ZONES; zone_type++)
		mem_in_bytes += FUNC4(&pgdat->node_zones[zone_type]);
	mem_in_bytes <<= PAGE_SHIFT;

	sub_type_hdr->length_low = FUNC1(mem_in_bytes);
	sub_type_hdr->length_high = FUNC3(mem_in_bytes);
	sub_type_hdr->proximity_domain = proximity_domain;

	return 0;
}