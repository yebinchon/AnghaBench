#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct ppa_addr {int dummy; } ;
struct pblk_line {TYPE_1__* w_err_gc; int /*<<< orphan*/  id; struct pblk_emeta* emeta; } ;
struct pblk_g_ctx {struct pblk_line* private; } ;
struct pblk_emeta {int nr_entries; int /*<<< orphan*/  sync; } ;
struct pblk {int /*<<< orphan*/  inflight_io; int /*<<< orphan*/  close_wq; } ;
struct nvm_rq {int /*<<< orphan*/  nr_ppas; scalar_t__ error; struct pblk* private; } ;
struct TYPE_2__ {int has_write_err; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  PBLK_WRITE_INT ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct pblk_g_ctx* FUNC2 (struct nvm_rq*) ; 
 struct ppa_addr* FUNC3 (struct nvm_rq*) ; 
 int /*<<< orphan*/  FUNC4 (struct pblk*,struct nvm_rq*) ; 
 int /*<<< orphan*/  FUNC5 (struct pblk*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct pblk*,struct nvm_rq*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct pblk*,struct pblk_line*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  pblk_line_close_ws ; 
 int /*<<< orphan*/  FUNC8 (struct pblk*,struct nvm_rq*) ; 
 int /*<<< orphan*/  FUNC9 (struct pblk*,struct ppa_addr) ; 
 scalar_t__ FUNC10 () ; 

__attribute__((used)) static void FUNC11(struct nvm_rq *rqd)
{
	struct pblk *pblk = rqd->private;
	struct pblk_g_ctx *m_ctx = FUNC2(rqd);
	struct pblk_line *line = m_ctx->private;
	struct pblk_emeta *emeta = line->emeta;
	struct ppa_addr *ppa_list = FUNC3(rqd);
	int sync;

	FUNC9(pblk, ppa_list[0]);

	if (rqd->error) {
		FUNC8(pblk, rqd);
		FUNC5(pblk, "metadata I/O failed. Line %d\n", line->id);
		line->w_err_gc->has_write_err = 1;
	} else {
		if (FUNC10())
			FUNC4(pblk, rqd);
	}

	sync = FUNC0(rqd->nr_ppas, &emeta->sync);
	if (sync == emeta->nr_entries)
		FUNC7(pblk, line, NULL, pblk_line_close_ws,
						GFP_ATOMIC, pblk->close_wq);

	FUNC6(pblk, rqd, PBLK_WRITE_INT);

	FUNC1(&pblk->inflight_io);
}