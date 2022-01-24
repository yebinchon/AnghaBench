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
struct pblk_sec_meta {void* lba; } ;
struct pblk {int /*<<< orphan*/  cache_reads; int /*<<< orphan*/  inflight_reads; } ;
struct nvm_rq {struct ppa_addr ppa_addr; int /*<<< orphan*/  meta_list; } ;
struct bio {int dummy; } ;
typedef  int /*<<< orphan*/  sector_t ;
typedef  void* __le64 ;

/* Variables and functions */
 int /*<<< orphan*/  ADDR_EMPTY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 void* FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct ppa_addr) ; 
 struct pblk_sec_meta* FUNC3 (struct pblk*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct pblk*,struct ppa_addr*,int /*<<< orphan*/ ,int,int*) ; 
 scalar_t__ FUNC5 (struct ppa_addr) ; 
 int /*<<< orphan*/  FUNC6 (struct pblk*,struct bio*,int /*<<< orphan*/ ,struct ppa_addr) ; 

__attribute__((used)) static void FUNC7(struct pblk *pblk, struct nvm_rq *rqd, struct bio *bio,
			 sector_t lba, bool *from_cache)
{
	struct pblk_sec_meta *meta = FUNC3(pblk, rqd->meta_list, 0);
	struct ppa_addr ppa;

	FUNC4(pblk, &ppa, lba, 1, from_cache);

#ifdef CONFIG_NVM_PBLK_DEBUG
	atomic_long_inc(&pblk->inflight_reads);
#endif

retry:
	if (FUNC5(ppa)) {
		__le64 addr_empty = FUNC1(ADDR_EMPTY);

		meta->lba = addr_empty;
		return;
	}

	/* Try to read from write buffer. The address is later checked on the
	 * write buffer to prevent retrieving overwritten data.
	 */
	if (FUNC2(ppa)) {
		if (!FUNC6(pblk, bio, lba, ppa)) {
			FUNC4(pblk, &ppa, lba, 1, from_cache);
			goto retry;
		}

		meta->lba = FUNC1(lba);

#ifdef CONFIG_NVM_PBLK_DEBUG
		atomic_long_inc(&pblk->cache_reads);
#endif
	} else {
		rqd->ppa_addr = ppa;
	}
}