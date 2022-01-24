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
typedef  int u64 ;
struct pblk_line_mgmt {int /*<<< orphan*/  bad_list; int /*<<< orphan*/  bb_aux; int /*<<< orphan*/  bb_template; } ;
struct pblk_line_meta {int sec_per_line; int blk_per_line; int smeta_sec; int* emeta_sec; } ;
struct pblk_line {int sec_in_line; int cur_sec; int emeta_ssec; int left_msecs; int /*<<< orphan*/  id; int /*<<< orphan*/  list; int /*<<< orphan*/  lock; int /*<<< orphan*/  state; int /*<<< orphan*/  invalid_bitmap; int /*<<< orphan*/ * vsc; scalar_t__ nr_valid_lbas; int /*<<< orphan*/  map_bitmap; int /*<<< orphan*/  blk_bitmap; } ;
struct pblk {struct pblk_line_mgmt l_mg; struct pblk_line_meta lm; struct nvm_tgt_dev* dev; } ;
struct nvm_geo {int ws_opt; scalar_t__ clba; } ;
struct nvm_tgt_dev {struct nvm_geo geo; } ;

/* Variables and functions */
 int /*<<< orphan*/  PBLK_LINESTATE_BAD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int FUNC6 (int /*<<< orphan*/ ,int) ; 
 int FUNC7 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct pblk*,char*) ; 
 int /*<<< orphan*/  FUNC10 (struct pblk*) ; 
 int /*<<< orphan*/  FUNC11 (struct pblk*,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (struct pblk*,struct pblk_line*,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC17(struct pblk *pblk, struct pblk_line *line,
			     int init)
{
	struct nvm_tgt_dev *dev = pblk->dev;
	struct nvm_geo *geo = &dev->geo;
	struct pblk_line_meta *lm = &pblk->lm;
	struct pblk_line_mgmt *l_mg = &pblk->l_mg;
	u64 off;
	int bit = -1;
	int emeta_secs;

	line->sec_in_line = lm->sec_per_line;

	/* Capture bad block information on line mapping bitmaps */
	while ((bit = FUNC7(line->blk_bitmap, lm->blk_per_line,
					bit + 1)) < lm->blk_per_line) {
		off = bit * geo->ws_opt;
		FUNC3(l_mg->bb_aux, l_mg->bb_template, off,
							lm->sec_per_line);
		FUNC1(line->map_bitmap, line->map_bitmap, l_mg->bb_aux,
							lm->sec_per_line);
		line->sec_in_line -= geo->clba;
	}

	/* Mark smeta metadata sectors as bad sectors */
	bit = FUNC6(line->blk_bitmap, lm->blk_per_line);
	off = bit * geo->ws_opt;
	FUNC2(line->map_bitmap, off, lm->smeta_sec);
	line->sec_in_line -= lm->smeta_sec;
	line->cur_sec = off + lm->smeta_sec;

	if (init && FUNC12(pblk, line, off)) {
		FUNC9(pblk, "line smeta I/O failed. Retry\n");
		return 0;
	}

	FUNC0(line->invalid_bitmap, line->map_bitmap, lm->sec_per_line);

	/* Mark emeta metadata sectors as bad sectors. We need to consider bad
	 * blocks to make sure that there are enough sectors to store emeta
	 */
	emeta_secs = lm->emeta_sec[0];
	off = lm->sec_per_line;
	while (emeta_secs) {
		off -= geo->ws_opt;
		if (!FUNC15(off, line->invalid_bitmap)) {
			FUNC2(line->invalid_bitmap, off, geo->ws_opt);
			emeta_secs -= geo->ws_opt;
		}
	}

	line->emeta_ssec = off;
	line->sec_in_line -= lm->emeta_sec[0];
	line->nr_valid_lbas = 0;
	line->left_msecs = line->sec_in_line;
	*line->vsc = FUNC5(line->sec_in_line);

	if (lm->sec_per_line - line->sec_in_line !=
		FUNC4(line->invalid_bitmap, lm->sec_per_line)) {
		FUNC13(&line->lock);
		line->state = PBLK_LINESTATE_BAD;
		FUNC16(FUNC10(pblk), line->id,
					line->state);
		FUNC14(&line->lock);

		FUNC8(&line->list, &l_mg->bad_list);
		FUNC11(pblk, "unexpected line %d is bad\n", line->id);

		return 0;
	}

	return 1;
}