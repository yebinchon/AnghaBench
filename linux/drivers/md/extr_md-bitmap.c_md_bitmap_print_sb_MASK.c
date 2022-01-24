#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  sb_page; } ;
struct bitmap {TYPE_1__ storage; } ;
struct TYPE_6__ {int /*<<< orphan*/  write_behind; int /*<<< orphan*/  sync_size; int /*<<< orphan*/  daemon_sleep; int /*<<< orphan*/  chunksize; int /*<<< orphan*/  state; int /*<<< orphan*/  events_cleared; int /*<<< orphan*/  events; scalar_t__ uuid; int /*<<< orphan*/  version; int /*<<< orphan*/  magic; } ;
typedef  TYPE_2__ bitmap_super_t ;
typedef  int /*<<< orphan*/  __le32 ;

/* Variables and functions */
 unsigned long long FUNC0 (struct bitmap*) ; 
 TYPE_2__* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 unsigned long long FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,unsigned long long,...) ; 

void FUNC6(struct bitmap *bitmap)
{
	bitmap_super_t *sb;

	if (!bitmap || !bitmap->storage.sb_page)
		return;
	sb = FUNC1(bitmap->storage.sb_page);
	FUNC5("%s: bitmap file superblock:\n", FUNC0(bitmap));
	FUNC5("         magic: %08x\n", FUNC3(sb->magic));
	FUNC5("       version: %d\n", FUNC3(sb->version));
	FUNC5("          uuid: %08x.%08x.%08x.%08x\n",
		 FUNC3(*(__le32 *)(sb->uuid+0)),
		 FUNC3(*(__le32 *)(sb->uuid+4)),
		 FUNC3(*(__le32 *)(sb->uuid+8)),
		 FUNC3(*(__le32 *)(sb->uuid+12)));
	FUNC5("        events: %llu\n",
		 (unsigned long long) FUNC4(sb->events));
	FUNC5("events cleared: %llu\n",
		 (unsigned long long) FUNC4(sb->events_cleared));
	FUNC5("         state: %08x\n", FUNC3(sb->state));
	FUNC5("     chunksize: %d B\n", FUNC3(sb->chunksize));
	FUNC5("  daemon sleep: %ds\n", FUNC3(sb->daemon_sleep));
	FUNC5("     sync size: %llu KB\n",
		 (unsigned long long)FUNC4(sb->sync_size)/2);
	FUNC5("max write behind: %d\n", FUNC3(sb->write_behind));
	FUNC2(sb);
}