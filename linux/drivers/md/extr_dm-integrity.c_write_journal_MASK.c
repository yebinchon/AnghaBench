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
struct journal_completion {int /*<<< orphan*/  comp; void* in_flight; struct dm_integrity_c* ic; } ;
struct dm_integrity_c {unsigned int journal_sections; scalar_t__ journal_io; } ;
typedef  void* atomic_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int REQ_FUA ; 
 int /*<<< orphan*/  REQ_OP_WRITE ; 
 int REQ_SYNC ; 
 int /*<<< orphan*/  FUNC1 (struct dm_integrity_c*,int,unsigned int,unsigned int,struct journal_completion*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct dm_integrity_c*,int /*<<< orphan*/ ,int,unsigned int,unsigned int,struct journal_completion*) ; 
 int /*<<< orphan*/  FUNC5 (struct dm_integrity_c*,unsigned int,int) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC8(struct dm_integrity_c *ic, unsigned commit_start, unsigned commit_sections)
{
	struct journal_completion io_comp;
	struct journal_completion crypt_comp_1;
	struct journal_completion crypt_comp_2;
	unsigned i;

	io_comp.ic = ic;
	FUNC2(&io_comp.comp);

	if (commit_start + commit_sections <= ic->journal_sections) {
		io_comp.in_flight = (atomic_t)FUNC0(1);
		if (ic->journal_io) {
			crypt_comp_1.ic = ic;
			FUNC2(&crypt_comp_1.comp);
			crypt_comp_1.in_flight = (atomic_t)FUNC0(0);
			FUNC1(ic, true, commit_start, commit_sections, &crypt_comp_1);
			FUNC7(&crypt_comp_1.comp);
		} else {
			for (i = 0; i < commit_sections; i++)
				FUNC5(ic, commit_start + i, true);
		}
		FUNC4(ic, REQ_OP_WRITE, REQ_FUA | REQ_SYNC, commit_start,
			   commit_sections, &io_comp);
	} else {
		unsigned to_end;
		io_comp.in_flight = (atomic_t)FUNC0(2);
		to_end = ic->journal_sections - commit_start;
		if (ic->journal_io) {
			crypt_comp_1.ic = ic;
			FUNC2(&crypt_comp_1.comp);
			crypt_comp_1.in_flight = (atomic_t)FUNC0(0);
			FUNC1(ic, true, commit_start, to_end, &crypt_comp_1);
			if (FUNC6(&crypt_comp_1.comp)) {
				FUNC4(ic, REQ_OP_WRITE, REQ_FUA, commit_start, to_end, &io_comp);
				FUNC3(&crypt_comp_1.comp);
				crypt_comp_1.in_flight = (atomic_t)FUNC0(0);
				FUNC1(ic, true, 0, commit_sections - to_end, &crypt_comp_1);
				FUNC7(&crypt_comp_1.comp);
			} else {
				crypt_comp_2.ic = ic;
				FUNC2(&crypt_comp_2.comp);
				crypt_comp_2.in_flight = (atomic_t)FUNC0(0);
				FUNC1(ic, true, 0, commit_sections - to_end, &crypt_comp_2);
				FUNC7(&crypt_comp_1.comp);
				FUNC4(ic, REQ_OP_WRITE, REQ_FUA, commit_start, to_end, &io_comp);
				FUNC7(&crypt_comp_2.comp);
			}
		} else {
			for (i = 0; i < to_end; i++)
				FUNC5(ic, commit_start + i, true);
			FUNC4(ic, REQ_OP_WRITE, REQ_FUA, commit_start, to_end, &io_comp);
			for (i = 0; i < commit_sections - to_end; i++)
				FUNC5(ic, i, true);
		}
		FUNC4(ic, REQ_OP_WRITE, REQ_FUA, 0, commit_sections - to_end, &io_comp);
	}

	FUNC7(&io_comp.comp);
}