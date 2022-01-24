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
struct pblk_line {int /*<<< orphan*/  id; } ;
struct pblk {int /*<<< orphan*/  inflight_reads; } ;
struct nvm_rq {struct ppa_addr* ppa_list; } ;

/* Variables and functions */
 scalar_t__ ADDR_EMPTY ; 
 int NVM_MAX_VLBA ; 
 struct ppa_addr FUNC0 (struct pblk*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct pblk*,struct ppa_addr*,scalar_t__*,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (struct ppa_addr,struct ppa_addr) ; 

__attribute__((used)) static int FUNC4(struct pblk *pblk, struct nvm_rq *rqd,
			      struct pblk_line *line, u64 *lba_list,
			      u64 *paddr_list_gc, unsigned int nr_secs)
{
	struct ppa_addr ppa_list_l2p[NVM_MAX_VLBA];
	struct ppa_addr ppa_gc;
	int valid_secs = 0;
	int i;

	FUNC2(pblk, ppa_list_l2p, lba_list, nr_secs);

	for (i = 0; i < nr_secs; i++) {
		if (lba_list[i] == ADDR_EMPTY)
			continue;

		ppa_gc = FUNC0(pblk, paddr_list_gc[i], line->id);
		if (!FUNC3(ppa_list_l2p[i], ppa_gc)) {
			paddr_list_gc[i] = lba_list[i] = ADDR_EMPTY;
			continue;
		}

		rqd->ppa_list[valid_secs++] = ppa_list_l2p[i];
	}

#ifdef CONFIG_NVM_PBLK_DEBUG
	atomic_long_add(valid_secs, &pblk->inflight_reads);
#endif

	return valid_secs;
}