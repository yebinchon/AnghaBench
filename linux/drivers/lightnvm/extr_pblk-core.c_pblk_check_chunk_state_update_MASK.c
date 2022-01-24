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
struct pblk {int dummy; } ;
struct nvm_rq {int nr_ppas; } ;
struct nvm_chk_meta {int cnlb; } ;

/* Variables and functions */
 int /*<<< orphan*/  NVM_CHK_ST_CLOSED ; 
 int /*<<< orphan*/  NVM_CHK_ST_OPEN ; 
 struct ppa_addr* FUNC0 (struct nvm_rq*) ; 
 struct nvm_chk_meta* FUNC1 (struct pblk*,struct ppa_addr) ; 
 scalar_t__ FUNC2 (struct pblk*,struct ppa_addr) ; 
 int /*<<< orphan*/  FUNC3 (struct pblk*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct ppa_addr*,int /*<<< orphan*/ ) ; 

void FUNC5(struct pblk *pblk, struct nvm_rq *rqd)
{
	struct ppa_addr *ppa_list = FUNC0(rqd);

	int i;

	for (i = 0; i < rqd->nr_ppas; i++) {
		struct ppa_addr *ppa = &ppa_list[i];
		struct nvm_chk_meta *chunk = FUNC1(pblk, *ppa);
		u64 caddr = FUNC2(pblk, *ppa);

		if (caddr == 0)
			FUNC4(FUNC3(pblk),
							ppa, NVM_CHK_ST_OPEN);
		else if (caddr == (chunk->cnlb - 1))
			FUNC4(FUNC3(pblk),
							ppa, NVM_CHK_ST_CLOSED);
	}
}