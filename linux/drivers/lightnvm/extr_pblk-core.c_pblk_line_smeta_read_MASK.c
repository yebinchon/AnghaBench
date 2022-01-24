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
typedef  int /*<<< orphan*/  u64 ;
struct ppa_addr {int dummy; } ;
struct pblk_line_meta {int smeta_sec; } ;
struct pblk_line {int /*<<< orphan*/  smeta; int /*<<< orphan*/  id; } ;
struct pblk {int /*<<< orphan*/  inflight_io; struct pblk_line_meta lm; } ;
struct nvm_rq {int nr_ppas; int is_seq; scalar_t__ error; int /*<<< orphan*/  opcode; } ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  NVM_OP_PREAD ; 
 scalar_t__ NVM_RSP_WARN_HIGHECC ; 
 struct ppa_addr FUNC0 (struct pblk*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct nvm_rq*,int /*<<< orphan*/ ,int) ; 
 struct ppa_addr* FUNC3 (struct nvm_rq*) ; 
 int FUNC4 (struct pblk*,struct nvm_rq*) ; 
 int /*<<< orphan*/  FUNC5 (struct pblk*,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct pblk*,struct nvm_rq*) ; 
 int /*<<< orphan*/  FUNC7 (struct pblk*,struct pblk_line*) ; 
 int /*<<< orphan*/  FUNC8 (struct pblk*,struct nvm_rq*) ; 
 int FUNC9 (struct pblk*,struct nvm_rq*,int /*<<< orphan*/ ) ; 

int FUNC10(struct pblk *pblk, struct pblk_line *line)
{
	struct pblk_line_meta *lm = &pblk->lm;
	struct ppa_addr *ppa_list;
	struct nvm_rq rqd;
	u64 paddr = FUNC7(pblk, line);
	int i, ret;

	FUNC2(&rqd, 0, sizeof(struct nvm_rq));

	ret = FUNC4(pblk, &rqd);
	if (ret)
		return ret;

	rqd.opcode = NVM_OP_PREAD;
	rqd.nr_ppas = lm->smeta_sec;
	rqd.is_seq = 1;
	ppa_list = FUNC3(&rqd);

	for (i = 0; i < lm->smeta_sec; i++, paddr++)
		ppa_list[i] = FUNC0(pblk, paddr, line->id);

	ret = FUNC9(pblk, &rqd, line->smeta);
	if (ret) {
		FUNC5(pblk, "smeta I/O submission failed: %d\n", ret);
		goto clear_rqd;
	}

	FUNC1(&pblk->inflight_io);

	if (rqd.error && rqd.error != NVM_RSP_WARN_HIGHECC) {
		FUNC8(pblk, &rqd);
		ret = -EIO;
	}

clear_rqd:
	FUNC6(pblk, &rqd);
	return ret;
}