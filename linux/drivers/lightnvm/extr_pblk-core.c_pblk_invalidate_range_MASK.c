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
struct pblk {int /*<<< orphan*/  trans_lock; } ;
typedef  scalar_t__ sector_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ppa_addr) ; 
 int /*<<< orphan*/  FUNC1 (struct pblk*,struct ppa_addr) ; 
 int /*<<< orphan*/  FUNC2 (struct ppa_addr) ; 
 int /*<<< orphan*/  FUNC3 (struct ppa_addr*) ; 
 struct ppa_addr FUNC4 (struct pblk*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct pblk*,scalar_t__,struct ppa_addr) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC8(struct pblk *pblk, sector_t slba,
				  unsigned int nr_secs)
{
	sector_t lba;

	FUNC6(&pblk->trans_lock);
	for (lba = slba; lba < slba + nr_secs; lba++) {
		struct ppa_addr ppa;

		ppa = FUNC4(pblk, lba);

		if (!FUNC0(ppa) && !FUNC2(ppa))
			FUNC1(pblk, ppa);

		FUNC3(&ppa);
		FUNC5(pblk, lba, ppa);
	}
	FUNC7(&pblk->trans_lock);
}