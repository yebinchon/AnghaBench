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
struct pblk_rec_ctx {int /*<<< orphan*/  ws_rec; struct nvm_rq* rqd; struct pblk* pblk; } ;
struct pblk {int /*<<< orphan*/  close_wq; int /*<<< orphan*/  rec_pool; } ;
struct nvm_rq {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct pblk_rec_ctx* FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct pblk*,char*) ; 
 int /*<<< orphan*/  pblk_submit_rec ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct pblk *pblk, struct nvm_rq *rqd)
{
	struct pblk_rec_ctx *recovery;

	recovery = FUNC1(&pblk->rec_pool, GFP_ATOMIC);
	if (!recovery) {
		FUNC2(pblk, "could not allocate recovery work\n");
		return;
	}

	recovery->pblk = pblk;
	recovery->rqd = rqd;

	FUNC0(&recovery->ws_rec, pblk_submit_rec);
	FUNC3(pblk->close_wq, &recovery->ws_rec);
}