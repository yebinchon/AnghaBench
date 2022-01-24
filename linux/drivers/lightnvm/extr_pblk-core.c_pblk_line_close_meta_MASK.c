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
struct wa_counters {void* gc; void* pad; void* user; } ;
struct pblk_line_mgmt {int /*<<< orphan*/  close_lock; int /*<<< orphan*/  emeta_list; int /*<<< orphan*/  vsc_list; } ;
struct pblk_line_meta {int /*<<< orphan*/  blk_bitmap_len; int /*<<< orphan*/  vsc_list_len; } ;
struct pblk_line {scalar_t__ id; scalar_t__ emeta_ssec; scalar_t__ cur_sec; int /*<<< orphan*/  lock; int /*<<< orphan*/  list; int /*<<< orphan*/  nr_valid_lbas; int /*<<< orphan*/  type; int /*<<< orphan*/  blk_bitmap; struct pblk_emeta* emeta; } ;
struct pblk_emeta {struct line_emeta* buf; } ;
struct pblk {int /*<<< orphan*/  instance_uuid; int /*<<< orphan*/  gc_wa; int /*<<< orphan*/  pad_wa; int /*<<< orphan*/  user_wa; struct pblk_line_meta lm; struct pblk_line_mgmt l_mg; } ;
struct TYPE_2__ {void* crc; int /*<<< orphan*/  version_minor; int /*<<< orphan*/  version_major; int /*<<< orphan*/  type; void* id; int /*<<< orphan*/  uuid; void* identifier; } ;
struct line_emeta {void* crc; void* nr_valid_lbas; TYPE_1__ header; } ;
typedef  int /*<<< orphan*/  guid_t ;

/* Variables and functions */
 int /*<<< orphan*/  EMETA_VERSION_MAJOR ; 
 int /*<<< orphan*/  EMETA_VERSION_MINOR ; 
 scalar_t__ PBLK_MAGIC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 void* FUNC2 (scalar_t__) ; 
 void* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct line_emeta*) ; 
 int /*<<< orphan*/  FUNC5 (struct pblk*,struct line_emeta*) ; 
 struct wa_counters* FUNC6 (struct pblk_line_meta*,struct line_emeta*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (void*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (struct pblk*,struct line_emeta*) ; 
 scalar_t__ FUNC12 (struct pblk*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC13 (struct pblk*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 

void FUNC16(struct pblk *pblk, struct pblk_line *line)
{
	struct pblk_line_mgmt *l_mg = &pblk->l_mg;
	struct pblk_line_meta *lm = &pblk->lm;
	struct pblk_emeta *emeta = line->emeta;
	struct line_emeta *emeta_buf = emeta->buf;
	struct wa_counters *wa = FUNC6(lm, emeta_buf);

	/* No need for exact vsc value; avoid a big line lock and take aprox. */
	FUNC10(FUNC5(pblk, emeta_buf), l_mg->vsc_list, lm->vsc_list_len);
	FUNC10(FUNC4(emeta_buf), line->blk_bitmap, lm->blk_bitmap_len);

	wa->user = FUNC3(FUNC0(&pblk->user_wa));
	wa->pad = FUNC3(FUNC0(&pblk->pad_wa));
	wa->gc = FUNC3(FUNC0(&pblk->gc_wa));

	if (FUNC8(emeta_buf->header.identifier) != PBLK_MAGIC) {
		emeta_buf->header.identifier = FUNC2(PBLK_MAGIC);
		FUNC7((guid_t *)&emeta_buf->header.uuid,
							&pblk->instance_uuid);
		emeta_buf->header.id = FUNC2(line->id);
		emeta_buf->header.type = FUNC1(line->type);
		emeta_buf->header.version_major = EMETA_VERSION_MAJOR;
		emeta_buf->header.version_minor = EMETA_VERSION_MINOR;
		emeta_buf->header.crc = FUNC2(
			FUNC12(pblk, &emeta_buf->header));
	}

	emeta_buf->nr_valid_lbas = FUNC3(line->nr_valid_lbas);
	emeta_buf->crc = FUNC2(FUNC11(pblk, emeta_buf));

	FUNC14(&l_mg->close_lock);
	FUNC14(&line->lock);

	/* Update the in-memory start address for emeta, in case it has
	 * shifted due to write errors
	 */
	if (line->emeta_ssec != line->cur_sec)
		line->emeta_ssec = line->cur_sec;

	FUNC9(&line->list, &l_mg->emeta_list);
	FUNC15(&line->lock);
	FUNC15(&l_mg->close_lock);

	FUNC13(pblk);
}