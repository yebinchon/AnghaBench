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
struct pblk {scalar_t__ capacity; int /*<<< orphan*/  trans_lock; int /*<<< orphan*/  padded_wb; int /*<<< orphan*/  pad_wa; } ;
typedef  scalar_t__ sector_t ;

/* Variables and functions */
 scalar_t__ ADDR_EMPTY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct ppa_addr) ; 
 int /*<<< orphan*/  FUNC6 (struct pblk*,struct ppa_addr) ; 
 int /*<<< orphan*/  FUNC7 (struct ppa_addr,struct ppa_addr) ; 
 int /*<<< orphan*/  FUNC8 (struct ppa_addr) ; 
 struct ppa_addr FUNC9 (struct pblk*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (struct pblk*,scalar_t__,struct ppa_addr) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 

void FUNC13(struct pblk *pblk, sector_t lba,
			 struct ppa_addr ppa_mapped, struct ppa_addr ppa_cache)
{
	struct ppa_addr ppa_l2p;

#ifdef CONFIG_NVM_PBLK_DEBUG
	/* Callers must ensure that the ppa points to a device address */
	BUG_ON(pblk_addr_in_cache(ppa_mapped));
#endif
	/* Invalidate and discard padded entries */
	if (lba == ADDR_EMPTY) {
		FUNC3(&pblk->pad_wa);
#ifdef CONFIG_NVM_PBLK_DEBUG
		atomic_long_inc(&pblk->padded_wb);
#endif
		if (!FUNC8(ppa_mapped))
			FUNC6(pblk, ppa_mapped);
		return;
	}

	/* logic error: lba out-of-bounds. Ignore update */
	if (!(lba < pblk->capacity)) {
		FUNC1(1, "pblk: corrupted L2P map request\n");
		return;
	}

	FUNC11(&pblk->trans_lock);
	ppa_l2p = FUNC9(pblk, lba);

	/* Do not update L2P if the cacheline has been updated. In this case,
	 * the mapped ppa must be invalidated
	 */
	if (!FUNC7(ppa_l2p, ppa_cache)) {
		if (!FUNC8(ppa_mapped))
			FUNC6(pblk, ppa_mapped);
		goto out;
	}

#ifdef CONFIG_NVM_PBLK_DEBUG
	WARN_ON(!pblk_addr_in_cache(ppa_l2p) && !pblk_ppa_empty(ppa_l2p));
#endif

	FUNC10(pblk, lba, ppa_mapped);
out:
	FUNC12(&pblk->trans_lock);
}