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
struct ppa_addr {int dummy; } ;
struct pblk {scalar_t__ capacity; int /*<<< orphan*/  trans_map; } ;
typedef  scalar_t__ sector_t ;

/* Variables and functions */
 int ENOMEM ; 
 int GFP_KERNEL ; 
 int /*<<< orphan*/  PAGE_KERNEL ; 
 int __GFP_HIGHMEM ; 
 int __GFP_NOWARN ; 
 int __GFP_RETRY_MAYFAIL ; 
 int /*<<< orphan*/  FUNC0 (size_t,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct pblk*,char*,size_t) ; 
 int FUNC2 (struct pblk*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct ppa_addr*) ; 
 int /*<<< orphan*/  FUNC4 (struct pblk*,scalar_t__,struct ppa_addr) ; 
 size_t FUNC5 (struct pblk*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct pblk *pblk, bool factory_init)
{
	sector_t i;
	struct ppa_addr ppa;
	size_t map_size;
	int ret = 0;

	map_size = FUNC5(pblk);
	pblk->trans_map = FUNC0(map_size, GFP_KERNEL | __GFP_NOWARN
					| __GFP_RETRY_MAYFAIL | __GFP_HIGHMEM,
					PAGE_KERNEL);
	if (!pblk->trans_map) {
		FUNC1(pblk, "failed to allocate L2P (need %zu of memory)\n",
				map_size);
		return -ENOMEM;
	}

	FUNC3(&ppa);

	for (i = 0; i < pblk->capacity; i++)
		FUNC4(pblk, i, ppa);

	ret = FUNC2(pblk, factory_init);
	if (ret)
		FUNC6(pblk->trans_map);

	return ret;
}