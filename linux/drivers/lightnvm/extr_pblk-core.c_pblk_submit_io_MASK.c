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
struct pblk {int /*<<< orphan*/  inflight_io; struct nvm_tgt_dev* dev; } ;
struct nvm_tgt_dev {int dummy; } ;
struct nvm_rq {int dummy; } ;

/* Variables and functions */
 int NVM_IO_ERR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (struct nvm_tgt_dev*,struct nvm_rq*,void*) ; 
 scalar_t__ FUNC2 (struct pblk*,struct nvm_rq*) ; 

int FUNC3(struct pblk *pblk, struct nvm_rq *rqd, void *buf)
{
	struct nvm_tgt_dev *dev = pblk->dev;

	FUNC0(&pblk->inflight_io);

#ifdef CONFIG_NVM_PBLK_DEBUG
	if (pblk_check_io(pblk, rqd))
		return NVM_IO_ERR;
#endif

	return FUNC1(dev, rqd, buf);
}