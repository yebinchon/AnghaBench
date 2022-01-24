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
struct pblk_pad_rq {int /*<<< orphan*/  ref; struct pblk* pblk; } ;
struct pblk {int /*<<< orphan*/  inflight_io; } ;
struct nvm_rq {struct pblk_pad_rq* private; } ;

/* Variables and functions */
 int /*<<< orphan*/  PBLK_WRITE_INT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct ppa_addr* FUNC2 (struct nvm_rq*) ; 
 int /*<<< orphan*/  FUNC3 (struct pblk*,struct nvm_rq*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  pblk_recov_complete ; 
 int /*<<< orphan*/  FUNC4 (struct pblk*,struct ppa_addr) ; 

__attribute__((used)) static void FUNC5(struct nvm_rq *rqd)
{
	struct ppa_addr *ppa_list = FUNC2(rqd);
	struct pblk_pad_rq *pad_rq = rqd->private;
	struct pblk *pblk = pad_rq->pblk;

	FUNC4(pblk, ppa_list[0]);

	FUNC3(pblk, rqd, PBLK_WRITE_INT);

	FUNC0(&pblk->inflight_io);
	FUNC1(&pad_rq->ref, pblk_recov_complete);
}