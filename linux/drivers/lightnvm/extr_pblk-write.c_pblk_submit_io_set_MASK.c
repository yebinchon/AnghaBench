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
struct pblk_line {int /*<<< orphan*/  erase_bitmap; int /*<<< orphan*/  left_eblks; } ;
struct pblk {struct nvm_tgt_dev* dev; } ;
struct nvm_geo {int dummy; } ;
struct nvm_tgt_dev {struct nvm_geo geo; } ;
struct nvm_rq {int dummy; } ;

/* Variables and functions */
 int NVM_IO_ERR ; 
 int NVM_IO_OK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (struct pblk*,struct ppa_addr) ; 
 int /*<<< orphan*/  FUNC3 (struct pblk*,char*,int) ; 
 struct pblk_line* FUNC4 (struct pblk*) ; 
 int /*<<< orphan*/  FUNC5 (struct ppa_addr) ; 
 int /*<<< orphan*/  FUNC6 (struct ppa_addr*) ; 
 int FUNC7 (struct nvm_geo*,struct ppa_addr) ; 
 int FUNC8 (struct pblk*,struct nvm_rq*,struct ppa_addr*) ; 
 struct pblk_line* FUNC9 (struct pblk*,struct nvm_rq*) ; 
 int FUNC10 (struct pblk*,struct nvm_rq*,int /*<<< orphan*/ *) ; 
 int FUNC11 (struct pblk*,struct pblk_line*) ; 
 int /*<<< orphan*/  FUNC12 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC13(struct pblk *pblk, struct nvm_rq *rqd)
{
	struct ppa_addr erase_ppa;
	struct pblk_line *meta_line;
	int err;

	FUNC6(&erase_ppa);

	/* Assign lbas to ppas and populate request structure */
	err = FUNC8(pblk, rqd, &erase_ppa);
	if (err) {
		FUNC3(pblk, "could not setup write request: %d\n", err);
		return NVM_IO_ERR;
	}

	meta_line = FUNC9(pblk, rqd);

	/* Submit data write for current data line */
	err = FUNC10(pblk, rqd, NULL);
	if (err) {
		FUNC3(pblk, "data I/O submission failed: %d\n", err);
		return NVM_IO_ERR;
	}

	if (!FUNC5(erase_ppa)) {
		/* Submit erase for next data line */
		if (FUNC2(pblk, erase_ppa)) {
			struct pblk_line *e_line = FUNC4(pblk);
			struct nvm_tgt_dev *dev = pblk->dev;
			struct nvm_geo *geo = &dev->geo;
			int bit;

			FUNC1(&e_line->left_eblks);
			bit = FUNC7(geo, erase_ppa);
			FUNC0(!FUNC12(bit, e_line->erase_bitmap));
		}
	}

	if (meta_line) {
		/* Submit metadata write for previous data line */
		err = FUNC11(pblk, meta_line);
		if (err) {
			FUNC3(pblk, "metadata I/O submission failed: %d",
					err);
			return NVM_IO_ERR;
		}
	}

	return NVM_IO_OK;
}