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
struct pblk {int /*<<< orphan*/  rwb; } ;
typedef  int /*<<< orphan*/  sector_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct ppa_addr) ; 
 int /*<<< orphan*/  FUNC2 (struct ppa_addr) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct pblk*,int /*<<< orphan*/ ,struct ppa_addr) ; 

void FUNC5(struct pblk *pblk, sector_t lba, struct ppa_addr ppa)
{

#ifdef CONFIG_NVM_PBLK_DEBUG
	/* Callers must ensure that the ppa points to a cache address */
	BUG_ON(!pblk_addr_in_cache(ppa));
	BUG_ON(pblk_rb_pos_oob(&pblk->rwb, pblk_addr_to_cacheline(ppa)));
#endif

	FUNC4(pblk, lba, ppa);
}