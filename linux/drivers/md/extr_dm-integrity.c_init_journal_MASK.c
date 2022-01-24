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
struct journal_sector {int /*<<< orphan*/  commit_id; int /*<<< orphan*/  entries; } ;
struct journal_entry {int dummy; } ;
struct dm_integrity_c {unsigned int journal_section_sectors; unsigned int journal_section_entries; } ;

/* Variables and functions */
 int /*<<< orphan*/  JOURNAL_SECTOR_DATA ; 
 struct journal_sector* FUNC0 (struct dm_integrity_c*,unsigned int,unsigned int) ; 
 struct journal_entry* FUNC1 (struct dm_integrity_c*,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (struct dm_integrity_c*,unsigned int,unsigned int,unsigned char) ; 
 int /*<<< orphan*/  FUNC3 (struct journal_entry*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct dm_integrity_c*,unsigned int*) ; 
 int /*<<< orphan*/  FUNC6 (struct dm_integrity_c*,unsigned int,unsigned int) ; 

__attribute__((used)) static void FUNC7(struct dm_integrity_c *ic, unsigned start_section,
			 unsigned n_sections, unsigned char commit_seq)
{
	unsigned i, j, n;

	if (!n_sections)
		return;

	for (n = 0; n < n_sections; n++) {
		i = start_section + n;
		FUNC5(ic, &i);
		for (j = 0; j < ic->journal_section_sectors; j++) {
			struct journal_sector *js = FUNC0(ic, i, j);
			FUNC4(&js->entries, 0, JOURNAL_SECTOR_DATA);
			js->commit_id = FUNC2(ic, i, j, commit_seq);
		}
		for (j = 0; j < ic->journal_section_entries; j++) {
			struct journal_entry *je = FUNC1(ic, i, j);
			FUNC3(je);
		}
	}

	FUNC6(ic, start_section, n_sections);
}