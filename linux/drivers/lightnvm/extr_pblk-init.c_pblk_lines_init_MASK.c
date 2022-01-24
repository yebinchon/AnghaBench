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
struct pblk_line_mgmt {int nr_lines; } ;
struct pblk_line {int /*<<< orphan*/  state; int /*<<< orphan*/  id; } ;
struct pblk {struct pblk_line* luns; struct pblk_line* lines; struct pblk_line_mgmt l_mg; } ;

/* Variables and functions */
 int EINTR ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (void*) ; 
 int FUNC1 (void*) ; 
 struct pblk_line* FUNC2 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct pblk_line*) ; 
 int FUNC4 (struct pblk*,struct pblk_line*) ; 
 int /*<<< orphan*/  FUNC5 (struct pblk*) ; 
 int /*<<< orphan*/  FUNC6 (struct pblk*,char*) ; 
 void* FUNC7 (struct pblk*) ; 
 int /*<<< orphan*/  FUNC8 (struct pblk_line_mgmt*,struct pblk_line*) ; 
 int FUNC9 (struct pblk*) ; 
 int /*<<< orphan*/  FUNC10 (struct pblk*) ; 
 int FUNC11 (struct pblk*) ; 
 int FUNC12 (struct pblk*) ; 
 int FUNC13 (struct pblk*,int) ; 
 scalar_t__ FUNC14 (struct pblk*,struct pblk_line*,void*,int) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (void*) ; 

__attribute__((used)) static int FUNC17(struct pblk *pblk)
{
	struct pblk_line_mgmt *l_mg = &pblk->l_mg;
	struct pblk_line *line;
	void *chunk_meta;
	int nr_free_chks = 0;
	int i, ret;

	ret = FUNC9(pblk);
	if (ret)
		return ret;

	ret = FUNC11(pblk);
	if (ret)
		return ret;

	ret = FUNC12(pblk);
	if (ret)
		goto fail_free_meta;

	chunk_meta = FUNC7(pblk);
	if (FUNC0(chunk_meta)) {
		ret = FUNC1(chunk_meta);
		goto fail_free_luns;
	}

	pblk->lines = FUNC2(l_mg->nr_lines, sizeof(struct pblk_line),
								GFP_KERNEL);
	if (!pblk->lines) {
		ret = -ENOMEM;
		goto fail_free_chunk_meta;
	}

	for (i = 0; i < l_mg->nr_lines; i++) {
		line = &pblk->lines[i];

		ret = FUNC4(pblk, line);
		if (ret)
			goto fail_free_lines;

		nr_free_chks += FUNC14(pblk, line, chunk_meta, i);

		FUNC15(FUNC5(pblk), line->id,
								line->state);
	}

	if (!nr_free_chks) {
		FUNC6(pblk, "too many bad blocks prevent for sane instance\n");
		ret = -EINTR;
		goto fail_free_lines;
	}

	ret = FUNC13(pblk, nr_free_chks);
	if (ret)
		goto fail_free_lines;

	FUNC16(chunk_meta);
	return 0;

fail_free_lines:
	while (--i >= 0)
		FUNC8(l_mg, &pblk->lines[i]);
	FUNC3(pblk->lines);
fail_free_chunk_meta:
	FUNC16(chunk_meta);
fail_free_luns:
	FUNC3(pblk->luns);
fail_free_meta:
	FUNC10(pblk);

	return ret;
}