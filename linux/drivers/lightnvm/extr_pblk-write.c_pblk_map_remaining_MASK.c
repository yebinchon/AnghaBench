#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  size_t u64 ;
struct ppa_addr {int dummy; } ;
struct pblk_line {int /*<<< orphan*/  lock; TYPE_2__* w_err_gc; int /*<<< orphan*/  vsc; int /*<<< orphan*/  invalid_bitmap; int /*<<< orphan*/  nr_valid_lbas; int /*<<< orphan*/  left_msecs; int /*<<< orphan*/  map_bitmap; TYPE_1__* emeta; } ;
struct pblk {int /*<<< orphan*/  dev; } ;
typedef  scalar_t__ __le64 ;
struct TYPE_4__ {int has_write_err; } ;
struct TYPE_3__ {int /*<<< orphan*/  buf; } ;

/* Variables and functions */
 int /*<<< orphan*/  ADDR_EMPTY ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__* FUNC1 (struct pblk*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int FUNC3 (int /*<<< orphan*/ ,struct ppa_addr*) ; 
 size_t FUNC4 (struct pblk*,struct ppa_addr) ; 
 struct pblk_line* FUNC5 (struct pblk*,struct ppa_addr) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (size_t,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC9(struct pblk *pblk, struct ppa_addr *ppa,
		int rqd_ppas)
{
	struct pblk_line *line;
	struct ppa_addr map_ppa = *ppa;
	__le64 addr_empty = FUNC0(ADDR_EMPTY);
	__le64 *lba_list;
	u64 paddr;
	int done = 0;
	int n = 0;

	line = FUNC5(pblk, *ppa);
	lba_list = FUNC1(pblk, line->emeta->buf);

	FUNC6(&line->lock);

	while (!done)  {
		paddr = FUNC4(pblk, map_ppa);

		if (!FUNC8(paddr, line->map_bitmap))
			line->left_msecs--;

		if (n < rqd_ppas && lba_list[paddr] != addr_empty)
			line->nr_valid_lbas--;

		lba_list[paddr] = addr_empty;

		if (!FUNC8(paddr, line->invalid_bitmap))
			FUNC2(line->vsc, -1);

		done = FUNC3(pblk->dev, &map_ppa);

		n++;
	}

	line->w_err_gc->has_write_err = 1;
	FUNC7(&line->lock);
}