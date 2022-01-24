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
typedef  int /*<<< orphan*/  u64 ;
struct ppa_addr {int dummy; } ;
struct pblk_line {int /*<<< orphan*/  lock; int /*<<< orphan*/  invalid_bitmap; int /*<<< orphan*/  id; } ;
struct pblk {scalar_t__ capacity; int /*<<< orphan*/  trans_lock; int /*<<< orphan*/  rwb; } ;
typedef  scalar_t__ sector_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 struct ppa_addr FUNC2 (struct pblk*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ppa_addr) ; 
 int /*<<< orphan*/  FUNC4 (struct ppa_addr) ; 
 int /*<<< orphan*/  FUNC5 (struct ppa_addr,struct ppa_addr) ; 
 int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct ppa_addr FUNC7 (struct pblk*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (struct pblk*,scalar_t__,struct ppa_addr) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC12(struct pblk *pblk, sector_t lba, struct ppa_addr ppa_new,
		       struct pblk_line *gc_line, u64 paddr_gc)
{
	struct ppa_addr ppa_l2p, ppa_gc;
	int ret = 1;

#ifdef CONFIG_NVM_PBLK_DEBUG
	/* Callers must ensure that the ppa points to a cache address */
	BUG_ON(!pblk_addr_in_cache(ppa_new));
	BUG_ON(pblk_rb_pos_oob(&pblk->rwb, pblk_addr_to_cacheline(ppa_new)));
#endif

	/* logic error: lba out-of-bounds. Ignore update */
	if (!(lba < pblk->capacity)) {
		FUNC1(1, "pblk: corrupted L2P map request\n");
		return 0;
	}

	FUNC9(&pblk->trans_lock);
	ppa_l2p = FUNC7(pblk, lba);
	ppa_gc = FUNC2(pblk, paddr_gc, gc_line->id);

	if (!FUNC5(ppa_l2p, ppa_gc)) {
		FUNC9(&gc_line->lock);
		FUNC1(!FUNC11(paddr_gc, gc_line->invalid_bitmap),
						"pblk: corrupted GC update");
		FUNC10(&gc_line->lock);

		ret = 0;
		goto out;
	}

	FUNC8(pblk, lba, ppa_new);
out:
	FUNC10(&pblk->trans_lock);
	return ret;
}