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
struct pblk_line {int /*<<< orphan*/  left_seblks; struct nvm_chk_meta* chks; } ;
struct pblk {int /*<<< orphan*/  inflight_io; struct nvm_tgt_dev* dev; } ;
struct nvm_geo {int dummy; } ;
struct nvm_tgt_dev {struct nvm_geo geo; } ;
struct nvm_rq {int /*<<< orphan*/  ppa_addr; scalar_t__ error; } ;
struct nvm_chk_meta {int /*<<< orphan*/  state; } ;

/* Variables and functions */
 int /*<<< orphan*/  NVM_CHK_ST_FREE ; 
 int /*<<< orphan*/  NVM_CHK_ST_OFFLINE ; 
 int /*<<< orphan*/  PBLK_CHUNK_RESET_DONE ; 
 int /*<<< orphan*/  PBLK_CHUNK_RESET_FAILED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct pblk*) ; 
 int /*<<< orphan*/  FUNC2 (struct pblk*,struct pblk_line*,int /*<<< orphan*/ ) ; 
 struct pblk_line* FUNC3 (struct pblk*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct nvm_geo*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(struct pblk *pblk, struct nvm_rq *rqd)
{
	struct nvm_tgt_dev *dev = pblk->dev;
	struct nvm_geo *geo = &dev->geo;
	struct nvm_chk_meta *chunk;
	struct pblk_line *line;
	int pos;

	line = FUNC3(pblk, rqd->ppa_addr);
	pos = FUNC4(geo, rqd->ppa_addr);
	chunk = &line->chks[pos];

	FUNC0(&line->left_seblks);

	if (rqd->error) {
		FUNC5(FUNC1(pblk),
				&rqd->ppa_addr, PBLK_CHUNK_RESET_FAILED);

		chunk->state = NVM_CHK_ST_OFFLINE;
		FUNC2(pblk, line, rqd->ppa_addr);
	} else {
		FUNC5(FUNC1(pblk),
				&rqd->ppa_addr, PBLK_CHUNK_RESET_DONE);

		chunk->state = NVM_CHK_ST_FREE;
	}

	FUNC6(FUNC1(pblk), &rqd->ppa_addr,
				chunk->state);

	FUNC0(&pblk->inflight_io);
}