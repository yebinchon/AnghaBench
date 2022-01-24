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
struct pblk {struct nvm_tgt_dev* dev; } ;
struct nvm_geo {int dummy; } ;
struct nvm_tgt_dev {struct nvm_geo geo; } ;
struct nvm_rq {struct pblk* private; int /*<<< orphan*/  end_io; } ;

/* Variables and functions */
 int /*<<< orphan*/  PBLK_CHUNK_RESET_START ; 
 int /*<<< orphan*/  PBLK_ERASE ; 
 struct nvm_rq* FUNC0 (struct pblk*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct pblk*) ; 
 int /*<<< orphan*/  pblk_end_io_erase ; 
 int /*<<< orphan*/  FUNC2 (struct pblk*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ppa_addr) ; 
 int /*<<< orphan*/  FUNC4 (struct nvm_geo*,struct ppa_addr) ; 
 int /*<<< orphan*/  FUNC5 (struct pblk*,struct nvm_rq*,struct ppa_addr) ; 
 int FUNC6 (struct pblk*,struct nvm_rq*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,struct ppa_addr*,int /*<<< orphan*/ ) ; 

int FUNC8(struct pblk *pblk, struct ppa_addr ppa)
{
	struct nvm_rq *rqd;
	int err;

	rqd = FUNC0(pblk, PBLK_ERASE);

	FUNC5(pblk, rqd, ppa);

	rqd->end_io = pblk_end_io_erase;
	rqd->private = pblk;

	FUNC7(FUNC1(pblk),
				&ppa, PBLK_CHUNK_RESET_START);

	/* The write thread schedules erases so that it minimizes disturbances
	 * with writes. Thus, there is no need to take the LUN semaphore.
	 */
	err = FUNC6(pblk, rqd, NULL);
	if (err) {
		struct nvm_tgt_dev *dev = pblk->dev;
		struct nvm_geo *geo = &dev->geo;

		FUNC2(pblk, "could not async erase line:%d,blk:%d\n",
					FUNC3(ppa),
					FUNC4(geo, ppa));
	}

	return err;
}