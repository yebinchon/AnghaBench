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
struct journal_io {int /*<<< orphan*/  range; struct journal_completion* comp; } ;
struct journal_completion {struct dm_integrity_c* ic; } ;
struct dm_integrity_c {int /*<<< orphan*/  journal_io_mempool; } ;

/* Variables and functions */
 int /*<<< orphan*/  EIO ; 
 int /*<<< orphan*/  FUNC0 (struct journal_completion*) ; 
 int /*<<< orphan*/  FUNC1 (struct dm_integrity_c*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct journal_io*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct dm_integrity_c*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int) ; 

__attribute__((used)) static void FUNC5(unsigned long error, void *context)
{
	struct journal_io *io = context;
	struct journal_completion *comp = io->comp;
	struct dm_integrity_c *ic = comp->ic;
	FUNC3(ic, &io->range);
	FUNC2(io, &ic->journal_io_mempool);
	if (FUNC4(error != 0))
		FUNC1(ic, "copying from journal", -EIO);
	FUNC0(comp);
}