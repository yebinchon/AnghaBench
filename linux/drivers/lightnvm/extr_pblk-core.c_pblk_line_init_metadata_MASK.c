#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct pblk_line_mgmt {int /*<<< orphan*/  free_lock; int /*<<< orphan*/  bad_list; } ;
struct pblk_line_meta {int blk_per_line; int min_blk_line; int lun_bitmap_len; } ;
struct pblk_line {int /*<<< orphan*/  sec_in_line; int /*<<< orphan*/  seq_nr; int /*<<< orphan*/  id; struct pblk_emeta* emeta; TYPE_1__* lun_bitmap; int /*<<< orphan*/  type; int /*<<< orphan*/  list; int /*<<< orphan*/  lock; int /*<<< orphan*/  state; int /*<<< orphan*/  blk_bitmap; scalar_t__ smeta; } ;
struct pblk_emeta {struct line_emeta* buf; } ;
struct pblk {int /*<<< orphan*/  instance_uuid; struct pblk_line_mgmt l_mg; struct pblk_line_meta lm; struct nvm_tgt_dev* dev; } ;
struct nvm_geo {int /*<<< orphan*/  all_luns; } ;
struct nvm_tgt_dev {struct nvm_geo geo; } ;
struct TYPE_5__ {void* crc; int /*<<< orphan*/  version_minor; int /*<<< orphan*/  version_major; int /*<<< orphan*/  type; void* id; int /*<<< orphan*/  uuid; void* identifier; } ;
struct line_smeta {void* prev_id; TYPE_1__ header; void* crc; void* window_wr_lun; void* seq_nr; } ;
struct line_header {int dummy; } ;
struct line_emeta {void* prev_id; void* crc; void* next_id; void* nr_valid_lbas; void* nr_lbas; void* seq_nr; TYPE_1__ header; } ;
typedef  int /*<<< orphan*/  guid_t ;

/* Variables and functions */
 int /*<<< orphan*/  EMETA_VERSION_MAJOR ; 
 int /*<<< orphan*/  EMETA_VERSION_MINOR ; 
 int /*<<< orphan*/  PBLK_LINESTATE_BAD ; 
 int /*<<< orphan*/  PBLK_LINE_EMPTY ; 
 int /*<<< orphan*/  PBLK_MAGIC ; 
 int /*<<< orphan*/  SMETA_VERSION_MAJOR ; 
 int /*<<< orphan*/  SMETA_VERSION_MINOR ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 void* FUNC3 (int /*<<< orphan*/ ) ; 
 void* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct pblk*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (struct pblk*,struct line_smeta*) ; 
 int /*<<< orphan*/  FUNC10 (struct pblk*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct pblk*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC15(struct pblk *pblk, struct pblk_line *line,
				  struct pblk_line *cur)
{
	struct nvm_tgt_dev *dev = pblk->dev;
	struct nvm_geo *geo = &dev->geo;
	struct pblk_line_meta *lm = &pblk->lm;
	struct pblk_line_mgmt *l_mg = &pblk->l_mg;
	struct pblk_emeta *emeta = line->emeta;
	struct line_emeta *emeta_buf = emeta->buf;
	struct line_smeta *smeta_buf = (struct line_smeta *)line->smeta;
	int nr_blk_line;

	/* After erasing the line, new bad blocks might appear and we risk
	 * having an invalid line
	 */
	nr_blk_line = lm->blk_per_line -
			FUNC1(line->blk_bitmap, lm->blk_per_line);
	if (nr_blk_line < lm->min_blk_line) {
		FUNC12(&l_mg->free_lock);
		FUNC12(&line->lock);
		line->state = PBLK_LINESTATE_BAD;
		FUNC14(FUNC11(pblk), line->id,
					line->state);
		FUNC13(&line->lock);

		FUNC6(&line->list, &l_mg->bad_list);
		FUNC13(&l_mg->free_lock);

		FUNC10(pblk, "line %d is bad\n", line->id);

		return 0;
	}

	/* Run-time metadata */
	line->lun_bitmap = ((void *)(smeta_buf)) + sizeof(struct line_smeta);

	/* Mark LUNs allocated in this line (all for now) */
	FUNC0(line->lun_bitmap, 0, lm->lun_bitmap_len);

	smeta_buf->header.identifier = FUNC3(PBLK_MAGIC);
	FUNC5((guid_t *)&smeta_buf->header.uuid, &pblk->instance_uuid);
	smeta_buf->header.id = FUNC3(line->id);
	smeta_buf->header.type = FUNC2(line->type);
	smeta_buf->header.version_major = SMETA_VERSION_MAJOR;
	smeta_buf->header.version_minor = SMETA_VERSION_MINOR;

	/* Start metadata */
	smeta_buf->seq_nr = FUNC4(line->seq_nr);
	smeta_buf->window_wr_lun = FUNC3(geo->all_luns);

	/* Fill metadata among lines */
	if (cur) {
		FUNC7(line->lun_bitmap, cur->lun_bitmap, lm->lun_bitmap_len);
		smeta_buf->prev_id = FUNC3(cur->id);
		cur->emeta->buf->next_id = FUNC3(line->id);
	} else {
		smeta_buf->prev_id = FUNC3(PBLK_LINE_EMPTY);
	}

	/* All smeta must be set at this point */
	smeta_buf->header.crc = FUNC3(
			FUNC8(pblk, &smeta_buf->header));
	smeta_buf->crc = FUNC3(FUNC9(pblk, smeta_buf));

	/* End metadata */
	FUNC7(&emeta_buf->header, &smeta_buf->header,
						sizeof(struct line_header));

	emeta_buf->header.version_major = EMETA_VERSION_MAJOR;
	emeta_buf->header.version_minor = EMETA_VERSION_MINOR;
	emeta_buf->header.crc = FUNC3(
			FUNC8(pblk, &emeta_buf->header));

	emeta_buf->seq_nr = FUNC4(line->seq_nr);
	emeta_buf->nr_lbas = FUNC4(line->sec_in_line);
	emeta_buf->nr_valid_lbas = FUNC4(0);
	emeta_buf->next_id = FUNC3(PBLK_LINE_EMPTY);
	emeta_buf->crc = FUNC3(0);
	emeta_buf->prev_id = smeta_buf->prev_id;

	return 1;
}