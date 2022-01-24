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
struct pblk_line {int /*<<< orphan*/  id; } ;
struct pblk {scalar_t__ capacity; int /*<<< orphan*/  inflight_reads; int /*<<< orphan*/  trans_lock; } ;
struct nvm_rq {struct ppa_addr ppa_addr; } ;
typedef  scalar_t__ sector_t ;

/* Variables and functions */
 scalar_t__ ADDR_EMPTY ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 struct ppa_addr FUNC1 (struct pblk*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct ppa_addr,struct ppa_addr) ; 
 struct ppa_addr FUNC4 (struct pblk*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(struct pblk *pblk, struct nvm_rq *rqd,
		      struct pblk_line *line, sector_t lba,
		      u64 paddr_gc)
{
	struct ppa_addr ppa_l2p, ppa_gc;
	int valid_secs = 0;

	if (lba == ADDR_EMPTY)
		goto out;

	/* logic error: lba out-of-bounds */
	if (lba >= pblk->capacity) {
		FUNC0(1, "pblk: read lba out of bounds\n");
		goto out;
	}

	FUNC5(&pblk->trans_lock);
	ppa_l2p = FUNC4(pblk, lba);
	FUNC6(&pblk->trans_lock);

	ppa_gc = FUNC1(pblk, paddr_gc, line->id);
	if (!FUNC3(ppa_l2p, ppa_gc))
		goto out;

	rqd->ppa_addr = ppa_l2p;
	valid_secs = 1;

#ifdef CONFIG_NVM_PBLK_DEBUG
	atomic_long_inc(&pblk->inflight_reads);
#endif

out:
	return valid_secs;
}