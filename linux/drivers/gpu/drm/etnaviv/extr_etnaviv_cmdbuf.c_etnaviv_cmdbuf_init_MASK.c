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
typedef  int /*<<< orphan*/  u32 ;
struct etnaviv_cmdbuf_suballoc {scalar_t__ vaddr; int /*<<< orphan*/  lock; int /*<<< orphan*/  dev; scalar_t__ free_space; int /*<<< orphan*/  free_event; int /*<<< orphan*/  granule_map; } ;
struct etnaviv_cmdbuf {int suballoc_offset; scalar_t__ vaddr; int /*<<< orphan*/  size; struct etnaviv_cmdbuf_suballoc* suballoc; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int) ; 
 int ETIMEDOUT ; 
 int SUBALLOC_GRANULE ; 
 int /*<<< orphan*/  SUBALLOC_GRANULES ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (int) ; 
 int FUNC7 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 

int FUNC8(struct etnaviv_cmdbuf_suballoc *suballoc,
			struct etnaviv_cmdbuf *cmdbuf, u32 size)
{
	int granule_offs, order, ret;

	cmdbuf->suballoc = suballoc;
	cmdbuf->size = size;

	order = FUNC6(FUNC0(size, SUBALLOC_GRANULE) / SUBALLOC_GRANULE);
retry:
	FUNC4(&suballoc->lock);
	granule_offs = FUNC1(suballoc->granule_map,
					SUBALLOC_GRANULES, order);
	if (granule_offs < 0) {
		suballoc->free_space = 0;
		FUNC5(&suballoc->lock);
		ret = FUNC7(suballoc->free_event,
						       suballoc->free_space,
						       FUNC3(10 * 1000));
		if (!ret) {
			FUNC2(suballoc->dev,
				"Timeout waiting for cmdbuf space\n");
			return -ETIMEDOUT;
		}
		goto retry;
	}
	FUNC5(&suballoc->lock);
	cmdbuf->suballoc_offset = granule_offs * SUBALLOC_GRANULE;
	cmdbuf->vaddr = suballoc->vaddr + cmdbuf->suballoc_offset;

	return 0;
}