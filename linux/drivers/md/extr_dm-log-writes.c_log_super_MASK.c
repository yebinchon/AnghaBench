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
typedef  int /*<<< orphan*/  super ;
struct log_writes_c {int /*<<< orphan*/  super_done; int /*<<< orphan*/  sectorsize; int /*<<< orphan*/  logged_entries; } ;
struct log_write_super {int /*<<< orphan*/  sectorsize; void* nr_entries; void* version; void* magic; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  WRITE_LOG_MAGIC ; 
 int /*<<< orphan*/  WRITE_LOG_SUPER_SECTOR ; 
 int /*<<< orphan*/  WRITE_LOG_VERSION ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 void* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (struct log_writes_c*,struct log_write_super*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct log_writes_c *lc)
{
	struct log_write_super super;

	super.magic = FUNC2(WRITE_LOG_MAGIC);
	super.version = FUNC2(WRITE_LOG_VERSION);
	super.nr_entries = FUNC2(lc->logged_entries);
	super.sectorsize = FUNC1(lc->sectorsize);

	if (FUNC4(lc, &super, sizeof(super), NULL, 0,
			   WRITE_LOG_SUPER_SECTOR)) {
		FUNC0("Couldn't write super");
		return -1;
	}

	/*
	 * Super sector should be writen in-order, otherwise the
	 * nr_entries could be rewritten incorrectly by an old bio.
	 */
	FUNC3(&lc->super_done);

	return 0;
}