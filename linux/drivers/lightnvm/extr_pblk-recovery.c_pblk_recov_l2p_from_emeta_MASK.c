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
typedef  size_t u64 ;
struct ppa_addr {int dummy; } ;
struct pblk_line_meta {size_t smeta_sec; } ;
struct pblk_line {size_t emeta_ssec; scalar_t__ left_msecs; int /*<<< orphan*/  id; int /*<<< orphan*/  lock; int /*<<< orphan*/  vsc; int /*<<< orphan*/  invalid_bitmap; int /*<<< orphan*/  blk_bitmap; struct pblk_emeta* emeta; } ;
struct pblk_emeta {struct line_emeta* buf; } ;
struct pblk {struct pblk_line_meta lm; struct nvm_tgt_dev* dev; } ;
struct nvm_geo {int dummy; } ;
struct nvm_tgt_dev {struct nvm_geo geo; } ;
struct line_emeta {int /*<<< orphan*/  nr_valid_lbas; } ;
typedef  int /*<<< orphan*/  __le64 ;

/* Variables and functions */
 scalar_t__ ADDR_EMPTY ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 struct ppa_addr FUNC1 (struct pblk*,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (struct pblk*,struct line_emeta*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct pblk*,char*,int /*<<< orphan*/ ,size_t,size_t) ; 
 size_t FUNC6 (struct pblk*,struct pblk_line*) ; 
 int FUNC7 (struct nvm_geo*,struct ppa_addr) ; 
 int /*<<< orphan*/  FUNC8 (struct pblk*,scalar_t__,struct ppa_addr) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (size_t,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC13(struct pblk *pblk, struct pblk_line *line)
{
	struct nvm_tgt_dev *dev = pblk->dev;
	struct nvm_geo *geo = &dev->geo;
	struct pblk_line_meta *lm = &pblk->lm;
	struct pblk_emeta *emeta = line->emeta;
	struct line_emeta *emeta_buf = emeta->buf;
	__le64 *lba_list;
	u64 data_start, data_end;
	u64 nr_valid_lbas, nr_lbas = 0;
	u64 i;

	lba_list = FUNC2(pblk, emeta_buf);
	if (!lba_list)
		return 1;

	data_start = FUNC6(pblk, line) + lm->smeta_sec;
	data_end = line->emeta_ssec;
	nr_valid_lbas = FUNC4(emeta_buf->nr_valid_lbas);

	for (i = data_start; i < data_end; i++) {
		struct ppa_addr ppa;
		int pos;

		ppa = FUNC1(pblk, i, line->id);
		pos = FUNC7(geo, ppa);

		/* Do not update bad blocks */
		if (FUNC12(pos, line->blk_bitmap))
			continue;

		if (FUNC4(lba_list[i]) == ADDR_EMPTY) {
			FUNC9(&line->lock);
			if (FUNC11(i, line->invalid_bitmap))
				FUNC0(1, "pblk: rec. double invalidate:\n");
			else
				FUNC3(line->vsc, -1);
			FUNC10(&line->lock);

			continue;
		}

		FUNC8(pblk, FUNC4(lba_list[i]), ppa);
		nr_lbas++;
	}

	if (nr_valid_lbas != nr_lbas)
		FUNC5(pblk, "line %d - inconsistent lba list(%llu/%llu)\n",
				line->id, nr_valid_lbas, nr_lbas);

	line->left_msecs = 0;

	return 0;
}