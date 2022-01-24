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
struct pblk_sec_meta {int /*<<< orphan*/  lba; } ;
struct pblk {int dummy; } ;
struct nvm_rq {int nr_ppas; void* meta_list; } ;

/* Variables and functions */
 scalar_t__ ADDR_EMPTY ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 struct ppa_addr* FUNC3 (struct nvm_rq*) ; 
 int /*<<< orphan*/  FUNC4 (struct pblk*,char*,scalar_t__,scalar_t__) ; 
 struct pblk_sec_meta* FUNC5 (struct pblk*,void*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct pblk*) ; 
 int /*<<< orphan*/  FUNC7 (struct pblk*,struct ppa_addr*,char*,int) ; 

__attribute__((used)) static void FUNC8(struct pblk *pblk, struct nvm_rq *rqd,
				 u64 *lba_list, int nr_lbas)
{
	void *meta_lba_list = rqd->meta_list;
	int i, j;

	if (!FUNC6(pblk))
		return;

	for (i = 0, j = 0; i < nr_lbas; i++) {
		struct pblk_sec_meta *meta = FUNC5(pblk,
							   meta_lba_list, j);
		u64 lba = lba_list[i];
		u64 meta_lba;

		if (lba == ADDR_EMPTY)
			continue;

		meta_lba = FUNC2(meta->lba);

		if (lba != meta_lba) {
#ifdef CONFIG_NVM_PBLK_DEBUG
			struct ppa_addr *ppa_list = nvm_rq_to_ppa_list(rqd);

			print_ppa(pblk, &ppa_list[j], "rnd", j);
#endif
			FUNC4(pblk, "corrupted read LBA (%llu/%llu)\n",
							meta_lba, lba);
			FUNC0(1);
		}

		j++;
	}

	FUNC1(j != rqd->nr_ppas, "pblk: corrupted random request\n");
}