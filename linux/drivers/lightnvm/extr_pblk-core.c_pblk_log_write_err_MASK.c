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
struct pblk {int /*<<< orphan*/  write_failed; } ;
struct nvm_rq {int /*<<< orphan*/  error; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct pblk*,struct nvm_rq*,int /*<<< orphan*/ ) ; 

void FUNC2(struct pblk *pblk, struct nvm_rq *rqd)
{
	FUNC0(&pblk->write_failed);
#ifdef CONFIG_NVM_PBLK_DEBUG
	pblk_print_failed_rqd(pblk, rqd, rqd->error);
#endif
}