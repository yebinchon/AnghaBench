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
struct dm_region_hash {int /*<<< orphan*/  hash_lock; int /*<<< orphan*/  region_lock; int /*<<< orphan*/  clean_regions; int /*<<< orphan*/  region_pool; TYPE_2__* log; } ;
struct dm_region {scalar_t__ state; int /*<<< orphan*/  list; int /*<<< orphan*/  delayed_bios; int /*<<< orphan*/  pending; int /*<<< orphan*/  key; struct dm_region_hash* rh; } ;
typedef  int /*<<< orphan*/  region_t ;
struct TYPE_4__ {TYPE_1__* type; } ;
struct TYPE_3__ {scalar_t__ (* in_sync ) (TYPE_2__*,int /*<<< orphan*/ ,int) ;} ;

/* Variables and functions */
 scalar_t__ DM_RH_CLEAN ; 
 scalar_t__ DM_RH_NOSYNC ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int GFP_NOIO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int __GFP_NOFAIL ; 
 int /*<<< orphan*/  FUNC1 (struct dm_region_hash*,struct dm_region*) ; 
 struct dm_region* FUNC2 (struct dm_region_hash*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct dm_region* FUNC5 (int,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct dm_region* FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct dm_region*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC12 (int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct dm_region *FUNC15(struct dm_region_hash *rh, region_t region)
{
	struct dm_region *reg, *nreg;

	nreg = FUNC7(&rh->region_pool, GFP_ATOMIC);
	if (FUNC12(!nreg))
		nreg = FUNC5(sizeof(*nreg), GFP_NOIO | __GFP_NOFAIL);

	nreg->state = rh->log->type->in_sync(rh->log, region, 1) ?
		      DM_RH_CLEAN : DM_RH_NOSYNC;
	nreg->rh = rh;
	nreg->key = region;
	FUNC0(&nreg->list);
	FUNC3(&nreg->pending, 0);
	FUNC4(&nreg->delayed_bios);

	FUNC13(&rh->hash_lock);
	reg = FUNC2(rh, region);
	if (reg)
		/* We lost the race. */
		FUNC8(nreg, &rh->region_pool);
	else {
		FUNC1(rh, nreg);
		if (nreg->state == DM_RH_CLEAN) {
			FUNC9(&rh->region_lock);
			FUNC6(&nreg->list, &rh->clean_regions);
			FUNC10(&rh->region_lock);
		}

		reg = nreg;
	}
	FUNC14(&rh->hash_lock);

	return reg;
}