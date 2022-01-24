#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  size_t u64 ;
struct ppa_addr {int dummy; } ;
struct pblk_sec_meta {int /*<<< orphan*/  lba; } ;
struct pblk_line_meta {int smeta_sec; } ;
struct pblk_line {int /*<<< orphan*/  smeta; int /*<<< orphan*/  id; TYPE_1__* emeta; } ;
struct pblk {int /*<<< orphan*/  inflight_io; struct pblk_line_meta lm; } ;
struct nvm_rq {int nr_ppas; int is_seq; scalar_t__ error; int /*<<< orphan*/  meta_list; int /*<<< orphan*/  opcode; } ;
typedef  int /*<<< orphan*/  __le64 ;
struct TYPE_2__ {int /*<<< orphan*/  buf; } ;

/* Variables and functions */
 int /*<<< orphan*/  ADDR_EMPTY ; 
 int EIO ; 
 int /*<<< orphan*/  NVM_OP_PWRITE ; 
 struct ppa_addr FUNC0 (struct pblk*,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (struct pblk*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct nvm_rq*,int /*<<< orphan*/ ,int) ; 
 struct ppa_addr* FUNC5 (struct nvm_rq*) ; 
 int FUNC6 (struct pblk*,struct nvm_rq*) ; 
 int /*<<< orphan*/  FUNC7 (struct pblk*,char*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct pblk*,struct nvm_rq*) ; 
 struct pblk_sec_meta* FUNC9 (struct pblk*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (struct pblk*,struct nvm_rq*) ; 
 int FUNC11 (struct pblk*,struct nvm_rq*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC12(struct pblk *pblk, struct pblk_line *line,
				 u64 paddr)
{
	struct pblk_line_meta *lm = &pblk->lm;
	struct ppa_addr *ppa_list;
	struct nvm_rq rqd;
	__le64 *lba_list = FUNC3(pblk, line->emeta->buf);
	__le64 addr_empty = FUNC2(ADDR_EMPTY);
	int i, ret;

	FUNC4(&rqd, 0, sizeof(struct nvm_rq));

	ret = FUNC6(pblk, &rqd);
	if (ret)
		return ret;

	rqd.opcode = NVM_OP_PWRITE;
	rqd.nr_ppas = lm->smeta_sec;
	rqd.is_seq = 1;
	ppa_list = FUNC5(&rqd);

	for (i = 0; i < lm->smeta_sec; i++, paddr++) {
		struct pblk_sec_meta *meta = FUNC9(pblk,
							   rqd.meta_list, i);

		ppa_list[i] = FUNC0(pblk, paddr, line->id);
		meta->lba = lba_list[paddr] = addr_empty;
	}

	ret = FUNC11(pblk, &rqd, line->smeta);
	if (ret) {
		FUNC7(pblk, "smeta I/O submission failed: %d\n", ret);
		goto clear_rqd;
	}

	FUNC1(&pblk->inflight_io);

	if (rqd.error) {
		FUNC10(pblk, &rqd);
		ret = -EIO;
	}

clear_rqd:
	FUNC8(pblk, &rqd);
	return ret;
}