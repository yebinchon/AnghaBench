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
struct pblk_line_meta {unsigned int* emeta_len; } ;
struct pblk_line {int /*<<< orphan*/  id; } ;
struct pblk {struct pblk_line_meta lm; } ;
struct line_emeta {int dummy; } ;
typedef  int /*<<< orphan*/  __le64 ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct pblk*,struct line_emeta*) ; 
 int /*<<< orphan*/  FUNC1 (struct line_emeta*) ; 
 void* FUNC2 (unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (struct pblk*,char*,int /*<<< orphan*/ ,...) ; 
 int FUNC5 (struct pblk*,struct pblk_line*,struct line_emeta*) ; 
 int FUNC6 (struct pblk*,struct line_emeta*) ; 

__attribute__((used)) static __le64 *FUNC7(struct pblk *pblk,
				       struct pblk_line *line)
{
	struct line_emeta *emeta_buf;
	struct pblk_line_meta *lm = &pblk->lm;
	unsigned int lba_list_size = lm->emeta_len[2];
	__le64 *lba_list;
	int ret;

	emeta_buf = FUNC2(lm->emeta_len[0], GFP_KERNEL);
	if (!emeta_buf)
		return NULL;

	ret = FUNC5(pblk, line, emeta_buf);
	if (ret) {
		FUNC4(pblk, "line %d read emeta failed (%d)\n",
				line->id, ret);
		FUNC1(emeta_buf);
		return NULL;
	}

	/* If this read fails, it means that emeta is corrupted.
	 * For now, leave the line untouched.
	 * TODO: Implement a recovery routine that scans and moves
	 * all sectors on the line.
	 */

	ret = FUNC6(pblk, emeta_buf);
	if (ret) {
		FUNC4(pblk, "inconsistent emeta (line %d)\n",
				line->id);
		FUNC1(emeta_buf);
		return NULL;
	}

	lba_list = FUNC2(lba_list_size, GFP_KERNEL);

	if (lba_list)
		FUNC3(lba_list, FUNC0(pblk, emeta_buf), lba_list_size);

	FUNC1(emeta_buf);

	return lba_list;
}