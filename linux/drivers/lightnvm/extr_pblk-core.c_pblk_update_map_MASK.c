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
struct pblk {scalar_t__ capacity; int /*<<< orphan*/  trans_lock; } ;
typedef  scalar_t__ sector_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct ppa_addr) ; 
 int /*<<< orphan*/  FUNC2 (struct pblk*,struct ppa_addr) ; 
 int /*<<< orphan*/  FUNC3 (struct ppa_addr) ; 
 struct ppa_addr FUNC4 (struct pblk*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct pblk*,scalar_t__,struct ppa_addr) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

void FUNC8(struct pblk *pblk, sector_t lba, struct ppa_addr ppa)
{
	struct ppa_addr ppa_l2p;

	/* logic error: lba out-of-bounds. Ignore update */
	if (!(lba < pblk->capacity)) {
		FUNC0(1, "pblk: corrupted L2P map request\n");
		return;
	}

	FUNC6(&pblk->trans_lock);
	ppa_l2p = FUNC4(pblk, lba);

	if (!FUNC1(ppa_l2p) && !FUNC3(ppa_l2p))
		FUNC2(pblk, ppa_l2p);

	FUNC5(pblk, lba, ppa);
	FUNC7(&pblk->trans_lock);
}