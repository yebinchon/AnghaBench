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
struct journal_sector {int dummy; } ;
struct journal_entry {int dummy; } ;
struct dm_integrity_c {unsigned int journal_entry_size; } ;

/* Variables and functions */
 unsigned int JOURNAL_BLOCK_SECTORS ; 
 struct journal_sector* FUNC0 (struct dm_integrity_c*,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (struct dm_integrity_c*,unsigned int,unsigned int,int,char*) ; 

__attribute__((used)) static struct journal_entry *FUNC2(struct dm_integrity_c *ic, unsigned section, unsigned n)
{
	unsigned rel_sector, offset;
	struct journal_sector *js;

	FUNC1(ic, section, n, true, "access_journal_entry");

	rel_sector = n % JOURNAL_BLOCK_SECTORS;
	offset = n / JOURNAL_BLOCK_SECTORS;

	js = FUNC0(ic, section, rel_sector);
	return (struct journal_entry *)((char *)js + offset * ic->journal_entry_size);
}