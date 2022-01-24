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
struct pblk_line {int /*<<< orphan*/  id; int /*<<< orphan*/  blk_bitmap; int /*<<< orphan*/  blk_in_line; } ;
struct pblk {int /*<<< orphan*/  bb_wq; int /*<<< orphan*/  erase_failed; struct nvm_tgt_dev* dev; } ;
struct nvm_geo {scalar_t__ version; } ;
struct nvm_tgt_dev {struct nvm_geo geo; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 scalar_t__ NVM_OCSSD_SPEC_20 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct ppa_addr* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct pblk*,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct pblk*,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct pblk*,int /*<<< orphan*/ *,struct ppa_addr*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  pblk_line_mark_bb ; 
 int FUNC6 (struct nvm_geo*,struct ppa_addr) ; 
 scalar_t__ FUNC7 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC8(struct pblk *pblk, struct pblk_line *line,
			 struct ppa_addr ppa_addr)
{
	struct nvm_tgt_dev *dev = pblk->dev;
	struct nvm_geo *geo = &dev->geo;
	struct ppa_addr *ppa;
	int pos = FUNC6(geo, ppa_addr);

	FUNC3(pblk, "erase failed: line:%d, pos:%d\n", line->id, pos);
	FUNC1(&pblk->erase_failed);

	FUNC0(&line->blk_in_line);
	if (FUNC7(pos, line->blk_bitmap))
		FUNC4(pblk, "attempted to erase bb: line:%d, pos:%d\n",
							line->id, pos);

	/* Not necessary to mark bad blocks on 2.0 spec. */
	if (geo->version == NVM_OCSSD_SPEC_20)
		return;

	ppa = FUNC2(sizeof(struct ppa_addr), GFP_ATOMIC);
	if (!ppa)
		return;

	*ppa = ppa_addr;
	FUNC5(pblk, NULL, ppa, pblk_line_mark_bb,
						GFP_ATOMIC, pblk->bb_wq);
}