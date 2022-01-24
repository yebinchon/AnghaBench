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
struct dm_region_hash {int /*<<< orphan*/  hash_lock; int /*<<< orphan*/  region_lock; TYPE_2__* log; } ;
struct dm_region {scalar_t__ state; int /*<<< orphan*/  key; int /*<<< orphan*/  list; int /*<<< orphan*/  pending; } ;
typedef  int /*<<< orphan*/  region_t ;
struct TYPE_4__ {TYPE_1__* type; } ;
struct TYPE_3__ {int /*<<< orphan*/  (* mark_region ) (TYPE_2__*,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 scalar_t__ DM_RH_CLEAN ; 
 scalar_t__ DM_RH_DIRTY ; 
 struct dm_region* FUNC0 (struct dm_region_hash*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC8(struct dm_region_hash *rh, region_t region)
{
	struct dm_region *reg;

	FUNC3(&rh->hash_lock);
	reg = FUNC0(rh, region);

	FUNC5(&rh->region_lock);
	FUNC1(&reg->pending);

	if (reg->state == DM_RH_CLEAN) {
		reg->state = DM_RH_DIRTY;
		FUNC2(&reg->list);	/* take off the clean list */
		FUNC6(&rh->region_lock);

		rh->log->type->mark_region(rh->log, reg->key);
	} else
		FUNC6(&rh->region_lock);


	FUNC4(&rh->hash_lock);
}