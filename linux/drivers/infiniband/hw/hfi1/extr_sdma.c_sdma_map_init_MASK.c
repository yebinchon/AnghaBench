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
typedef  int u8 ;
struct sdma_vl_map {int actual_vls; int vls; int mask; int* engine_to_vl; int /*<<< orphan*/  list; TYPE_1__** map; } ;
struct sdma_map_elem {int dummy; } ;
struct sdma_engine {int dummy; } ;
struct hfi1_devdata {int flags; int num_sdma; int /*<<< orphan*/  sde_map_lock; int /*<<< orphan*/  sdma_map; int /*<<< orphan*/ * per_sdma; } ;
struct TYPE_2__ {int mask; int /*<<< orphan*/ ** sde; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int HFI1_HAS_SEND_DMA ; 
 int OPA_MAX_VLS ; 
 int TXE_NUM_SDMA_ENGINES ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC1 (int) ; 
 void* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct sdma_vl_map*) ; 
 struct sdma_vl_map* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (struct sdma_vl_map*) ; 
 int /*<<< orphan*/  sdma_map_rcu_callback ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

int FUNC10(struct hfi1_devdata *dd, u8 port, u8 num_vls, u8 *vl_engines)
{
	int i, j;
	int extra, sde_per_vl;
	int engine = 0;
	u8 lvl_engines[OPA_MAX_VLS];
	struct sdma_vl_map *oldmap, *newmap;

	if (!(dd->flags & HFI1_HAS_SEND_DMA))
		return 0;

	if (!vl_engines) {
		/* truncate divide */
		sde_per_vl = dd->num_sdma / num_vls;
		/* extras */
		extra = dd->num_sdma % num_vls;
		vl_engines = lvl_engines;
		/* add extras from last vl down */
		for (i = num_vls - 1; i >= 0; i--, extra--)
			vl_engines[i] = sde_per_vl + (extra > 0 ? 1 : 0);
	}
	/* build new map */
	newmap = FUNC2(
		sizeof(struct sdma_vl_map) +
			FUNC6(num_vls) *
			sizeof(struct sdma_map_elem *),
		GFP_KERNEL);
	if (!newmap)
		goto bail;
	newmap->actual_vls = num_vls;
	newmap->vls = FUNC6(num_vls);
	newmap->mask = (1 << FUNC1(newmap->vls)) - 1;
	/* initialize back-map */
	for (i = 0; i < TXE_NUM_SDMA_ENGINES; i++)
		newmap->engine_to_vl[i] = -1;
	for (i = 0; i < newmap->vls; i++) {
		/* save for wrap around */
		int first_engine = engine;

		if (i < newmap->actual_vls) {
			int sz = FUNC6(vl_engines[i]);

			/* only allocate once */
			newmap->map[i] = FUNC2(
				sizeof(struct sdma_map_elem) +
					sz * sizeof(struct sdma_engine *),
				GFP_KERNEL);
			if (!newmap->map[i])
				goto bail;
			newmap->map[i]->mask = (1 << FUNC1(sz)) - 1;
			/* assign engines */
			for (j = 0; j < sz; j++) {
				newmap->map[i]->sde[j] =
					&dd->per_sdma[engine];
				if (++engine >= first_engine + vl_engines[i])
					/* wrap back to first engine */
					engine = first_engine;
			}
			/* assign back-map */
			for (j = 0; j < vl_engines[i]; j++)
				newmap->engine_to_vl[first_engine + j] = i;
		} else {
			/* just re-use entry without allocating */
			newmap->map[i] = newmap->map[i % num_vls];
		}
		engine = first_engine + vl_engines[i];
	}
	/* newmap in hand, save old map */
	FUNC8(&dd->sde_map_lock);
	oldmap = FUNC5(dd->sdma_map,
					   FUNC3(&dd->sde_map_lock));

	/* publish newmap */
	FUNC4(dd->sdma_map, newmap);

	FUNC9(&dd->sde_map_lock);
	/* success, free any old map after grace period */
	if (oldmap)
		FUNC0(&oldmap->list, sdma_map_rcu_callback);
	return 0;
bail:
	/* free any partial allocation */
	FUNC7(newmap);
	return -ENOMEM;
}