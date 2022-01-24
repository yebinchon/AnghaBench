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
typedef  scalar_t__ u64 ;
struct ppa_addr {int dummy; } ;
struct pblk {scalar_t__ capacity; int /*<<< orphan*/  trans_lock; } ;

/* Variables and functions */
 scalar_t__ ADDR_EMPTY ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 struct ppa_addr FUNC1 (struct pblk*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(struct pblk *pblk, struct ppa_addr *ppas,
			  u64 *lba_list, int nr_secs)
{
	u64 lba;
	int i;

	FUNC2(&pblk->trans_lock);
	for (i = 0; i < nr_secs; i++) {
		lba = lba_list[i];
		if (lba != ADDR_EMPTY) {
			/* logic error: lba out-of-bounds. Ignore update */
			if (!(lba < pblk->capacity)) {
				FUNC0(1, "pblk: corrupted L2P map request\n");
				continue;
			}
			ppas[i] = FUNC1(pblk, lba);
		}
	}
	FUNC3(&pblk->trans_lock);
}