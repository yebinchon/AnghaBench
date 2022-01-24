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
struct pblk_line {int /*<<< orphan*/  ref; } ;
struct pblk {int /*<<< orphan*/  trans_lock; } ;
typedef  scalar_t__ sector_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct ppa_addr) ; 
 int /*<<< orphan*/  FUNC2 (struct ppa_addr) ; 
 struct pblk_line* FUNC3 (struct pblk*,struct ppa_addr) ; 
 struct ppa_addr FUNC4 (struct pblk*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

int FUNC7(struct pblk *pblk, struct ppa_addr *ppas,
			 sector_t blba, int nr_secs, bool *from_cache)
{
	int i;

	FUNC5(&pblk->trans_lock);
	for (i = 0; i < nr_secs; i++) {
		struct ppa_addr ppa;

		ppa = ppas[i] = FUNC4(pblk, blba + i);

		/* If the L2P entry maps to a line, the reference is valid */
		if (!FUNC2(ppa) && !FUNC1(ppa)) {
			struct pblk_line *line = FUNC3(pblk, ppa);

			if (i > 0 && *from_cache)
				break;
			*from_cache = false;

			FUNC0(&line->ref);
		} else {
			if (i > 0 && !*from_cache)
				break;
			*from_cache = true;
		}
	}
	FUNC6(&pblk->trans_lock);
	return i;
}