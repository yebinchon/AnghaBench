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
struct dm_clone_region_hydration {scalar_t__ region_nr; int /*<<< orphan*/  list; struct clone* clone; } ;
struct clone {int /*<<< orphan*/  hydration_batch_size; } ;
struct batch_info {unsigned int nr_batched_regions; struct dm_clone_region_hydration* head; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 unsigned int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct dm_clone_region_hydration*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct batch_info *batch,
			      struct dm_clone_region_hydration *hd)
{
	struct clone *clone = hd->clone;
	unsigned int max_batch_size = FUNC1(clone->hydration_batch_size);

	if (batch->head) {
		/* Try to extend the current batch */
		if (batch->nr_batched_regions < max_batch_size &&
		    (batch->head->region_nr + batch->nr_batched_regions) == hd->region_nr) {
			FUNC3(&hd->list, &batch->head->list);
			batch->nr_batched_regions++;
			hd = NULL;
		}

		/* Check if we should issue the current batch */
		if (batch->nr_batched_regions >= max_batch_size || hd) {
			FUNC2(batch->head, batch->nr_batched_regions);
			batch->head = NULL;
			batch->nr_batched_regions = 0;
		}
	}

	if (!hd)
		return;

	/* We treat max batch sizes of zero and one equivalently */
	if (max_batch_size <= 1) {
		FUNC2(hd, 1);
		return;
	}

	/* Start a new batch */
	FUNC0(!FUNC4(&hd->list));
	batch->head = hd;
	batch->nr_batched_regions = 1;
}