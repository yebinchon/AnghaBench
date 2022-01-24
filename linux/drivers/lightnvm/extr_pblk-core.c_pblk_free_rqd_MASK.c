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
struct pblk_c_ctx {int /*<<< orphan*/  lun_bitmap; } ;
struct pblk {int /*<<< orphan*/  e_rq_pool; int /*<<< orphan*/  r_rq_pool; int /*<<< orphan*/  w_rq_pool; } ;
struct nvm_rq {int dummy; } ;
typedef  int /*<<< orphan*/  mempool_t ;

/* Variables and functions */
#define  PBLK_ERASE 131 
#define  PBLK_READ 130 
#define  PBLK_WRITE 129 
#define  PBLK_WRITE_INT 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct nvm_rq*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (struct nvm_rq*) ; 
 int /*<<< orphan*/  FUNC3 (struct pblk*,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct pblk*,struct nvm_rq*) ; 

void FUNC5(struct pblk *pblk, struct nvm_rq *rqd, int type)
{
	mempool_t *pool;

	switch (type) {
	case PBLK_WRITE:
		FUNC0(((struct pblk_c_ctx *)FUNC2(rqd))->lun_bitmap);
		/* fall through */
	case PBLK_WRITE_INT:
		pool = &pblk->w_rq_pool;
		break;
	case PBLK_READ:
		pool = &pblk->r_rq_pool;
		break;
	case PBLK_ERASE:
		pool = &pblk->e_rq_pool;
		break;
	default:
		FUNC3(pblk, "trying to free unknown rqd type\n");
		return;
	}

	FUNC4(pblk, rqd);
	FUNC1(rqd, pool);
}