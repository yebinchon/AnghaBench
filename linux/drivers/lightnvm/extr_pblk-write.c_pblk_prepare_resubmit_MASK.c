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
struct pblk_w_ctx {scalar_t__ lba; int /*<<< orphan*/  ppa; int /*<<< orphan*/  flags; } ;
struct pblk_rb_entry {int /*<<< orphan*/  cacheline; struct pblk_w_ctx w_ctx; } ;
struct pblk_rb {struct pblk_rb_entry* entries; } ;
struct pblk_line {int /*<<< orphan*/  ref; int /*<<< orphan*/  sec_to_update; } ;
struct pblk {int /*<<< orphan*/  trans_lock; struct pblk_rb rwb; } ;

/* Variables and functions */
 scalar_t__ ADDR_EMPTY ; 
 int PBLK_WRITTEN_DATA ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  pblk_line_put ; 
 int /*<<< orphan*/  FUNC3 (struct ppa_addr,int /*<<< orphan*/ ) ; 
 struct pblk_line* FUNC4 (struct pblk*,int /*<<< orphan*/ ) ; 
 size_t FUNC5 (struct pblk_rb*,unsigned int,unsigned int) ; 
 struct ppa_addr FUNC6 (struct pblk*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC10(struct pblk *pblk, unsigned int sentry,
				  unsigned int nr_entries)
{
	struct pblk_rb *rb = &pblk->rwb;
	struct pblk_rb_entry *entry;
	struct pblk_line *line;
	struct pblk_w_ctx *w_ctx;
	struct ppa_addr ppa_l2p;
	int flags;
	unsigned int i;

	FUNC8(&pblk->trans_lock);
	for (i = 0; i < nr_entries; i++) {
		entry = &rb->entries[FUNC5(rb, sentry, i)];
		w_ctx = &entry->w_ctx;

		/* Check if the lba has been overwritten */
		if (w_ctx->lba != ADDR_EMPTY) {
			ppa_l2p = FUNC6(pblk, w_ctx->lba);
			if (!FUNC3(ppa_l2p, entry->cacheline))
				w_ctx->lba = ADDR_EMPTY;
		}

		/* Mark up the entry as submittable again */
		flags = FUNC0(w_ctx->flags);
		flags |= PBLK_WRITTEN_DATA;
		/* Release flags on write context. Protect from writes */
		FUNC7(&w_ctx->flags, flags);

		/* Decrease the reference count to the line as we will
		 * re-map these entries
		 */
		line = FUNC4(pblk, w_ctx->ppa);
		FUNC1(&line->sec_to_update);
		FUNC2(&line->ref, pblk_line_put);
	}
	FUNC9(&pblk->trans_lock);
}