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
typedef  size_t u64 ;
struct ppa_addr {int dummy; } ;
struct pblk_w_ctx {int /*<<< orphan*/  lba; struct ppa_addr ppa; } ;
struct pblk_sec_meta {void* lba; } ;
struct pblk_line {int /*<<< orphan*/  nr_valid_lbas; int /*<<< orphan*/  sec_to_update; int /*<<< orphan*/  ref; int /*<<< orphan*/  id; struct pblk_emeta* emeta; } ;
struct pblk_emeta {int /*<<< orphan*/  buf; } ;
struct pblk {int min_write_pgs; int /*<<< orphan*/  pad_wa; int /*<<< orphan*/  rwb; } ;
typedef  scalar_t__ __le64 ;

/* Variables and functions */
 int /*<<< orphan*/  ADDR_EMPTY ; 
 int ENOSPC ; 
 int /*<<< orphan*/  FUNC0 (struct pblk*,struct pblk_line*,size_t) ; 
 struct ppa_addr FUNC1 (struct pblk*,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 void* FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__* FUNC5 (struct pblk*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 size_t FUNC7 (struct pblk*,struct pblk_line*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct pblk*,struct ppa_addr,unsigned long*) ; 
 struct pblk_sec_meta* FUNC9 (struct pblk*,void*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct pblk*,struct pblk_line*) ; 
 struct pblk_line* FUNC11 (struct pblk*) ; 
 scalar_t__ FUNC12 (struct pblk_line*) ; 
 struct pblk_line* FUNC13 (struct pblk*) ; 
 int /*<<< orphan*/  FUNC14 (struct pblk*) ; 
 struct pblk_w_ctx* FUNC15 (int /*<<< orphan*/ *,unsigned int) ; 

__attribute__((used)) static int FUNC16(struct pblk *pblk, unsigned int sentry,
			      struct ppa_addr *ppa_list,
			      unsigned long *lun_bitmap,
			      void *meta_list,
			      unsigned int valid_secs)
{
	struct pblk_line *line = FUNC11(pblk);
	struct pblk_emeta *emeta;
	struct pblk_w_ctx *w_ctx;
	__le64 *lba_list;
	u64 paddr;
	int nr_secs = pblk->min_write_pgs;
	int i;

	if (!line)
		return -ENOSPC;

	if (FUNC12(line)) {
		struct pblk_line *prev_line = line;

		/* If we cannot allocate a new line, make sure to store metadata
		 * on current line and then fail
		 */
		line = FUNC13(pblk);
		FUNC10(pblk, prev_line);

		if (!line) {
			FUNC14(pblk);
			return -ENOSPC;
		}

	}

	emeta = line->emeta;
	lba_list = FUNC5(pblk, emeta->buf);

	paddr = FUNC7(pblk, line, nr_secs);

	for (i = 0; i < nr_secs; i++, paddr++) {
		struct pblk_sec_meta *meta = FUNC9(pblk, meta_list, i);
		__le64 addr_empty = FUNC4(ADDR_EMPTY);

		/* ppa to be sent to the device */
		ppa_list[i] = FUNC1(pblk, paddr, line->id);

		/* Write context for target bio completion on write buffer. Note
		 * that the write buffer is protected by the sync backpointer,
		 * and a single writer thread have access to each specific entry
		 * at a time. Thus, it is safe to modify the context for the
		 * entry we are setting up for submission without taking any
		 * lock or memory barrier.
		 */
		if (i < valid_secs) {
			FUNC6(&line->ref);
			FUNC3(&line->sec_to_update);
			w_ctx = FUNC15(&pblk->rwb, sentry + i);
			w_ctx->ppa = ppa_list[i];
			meta->lba = FUNC4(w_ctx->lba);
			lba_list[paddr] = FUNC4(w_ctx->lba);
			if (lba_list[paddr] != addr_empty)
				line->nr_valid_lbas++;
			else
				FUNC2(&pblk->pad_wa);
		} else {
			lba_list[paddr] = addr_empty;
			meta->lba = addr_empty;
			FUNC0(pblk, line, paddr);
		}
	}

	FUNC8(pblk, ppa_list[0], lun_bitmap);
	return 0;
}