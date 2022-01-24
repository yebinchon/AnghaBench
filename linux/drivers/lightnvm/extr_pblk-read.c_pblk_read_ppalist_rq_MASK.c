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
struct pblk_sec_meta {void* lba; } ;
struct pblk {int /*<<< orphan*/  inflight_reads; int /*<<< orphan*/  cache_reads; } ;
struct nvm_rq {int is_seq; int /*<<< orphan*/ * ppa_list; int /*<<< orphan*/  nr_ppas; void* meta_list; } ;
struct bio {int dummy; } ;
typedef  scalar_t__ sector_t ;
typedef  void* __le64 ;

/* Variables and functions */
 scalar_t__ ADDR_EMPTY ; 
 int /*<<< orphan*/  PBLK_EXPOSED_PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct bio*,int /*<<< orphan*/ ) ; 
 void* FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 struct pblk_sec_meta* FUNC5 (struct pblk*,void*,int) ; 
 scalar_t__ FUNC6 (struct pblk*,int) ; 
 int FUNC7 (struct pblk*,int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ,int*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct pblk*,struct bio*,scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC10(struct pblk *pblk, struct nvm_rq *rqd,
				 struct bio *bio, sector_t blba,
				 bool *from_cache)
{
	void *meta_list = rqd->meta_list;
	int nr_secs, i;

retry:
	nr_secs = FUNC7(pblk, rqd->ppa_list, blba, rqd->nr_ppas,
					from_cache);

	if (!*from_cache)
		goto end;

	for (i = 0; i < nr_secs; i++) {
		struct pblk_sec_meta *meta = FUNC5(pblk, meta_list, i);
		sector_t lba = blba + i;

		if (FUNC8(rqd->ppa_list[i])) {
			__le64 addr_empty = FUNC3(ADDR_EMPTY);

			meta->lba = addr_empty;
		} else if (FUNC4(rqd->ppa_list[i])) {
			/*
			 * Try to read from write buffer. The address is later
			 * checked on the write buffer to prevent retrieving
			 * overwritten data.
			 */
			if (!FUNC9(pblk, bio, lba,
							rqd->ppa_list[i])) {
				if (i == 0) {
					/*
					 * We didn't call with bio_advance()
					 * yet, so we can just retry.
					 */
					goto retry;
				} else {
					/*
					 * We already call bio_advance()
					 * so we cannot retry and we need
					 * to quit that function in order
					 * to allow caller to handle the bio
					 * splitting in the current sector
					 * position.
					 */
					nr_secs = i;
					goto end;
				}
			}
			meta->lba = FUNC3(lba);
#ifdef CONFIG_NVM_PBLK_DEBUG
			atomic_long_inc(&pblk->cache_reads);
#endif
		}
		FUNC2(bio, PBLK_EXPOSED_PAGE_SIZE);
	}

end:
	if (FUNC6(pblk, nr_secs))
		rqd->is_seq = 1;

#ifdef CONFIG_NVM_PBLK_DEBUG
	atomic_long_add(nr_secs, &pblk->inflight_reads);
#endif

	return nr_secs;
}