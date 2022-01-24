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
struct mirror_set {TYPE_1__* mirror; } ;
struct dm_target {char* error; int /*<<< orphan*/  table; } ;
typedef  unsigned long long sector_t ;
struct TYPE_2__ {unsigned long long offset; scalar_t__ error_type; int /*<<< orphan*/  error_count; struct mirror_set* ms; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct dm_target*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (char*,char*,unsigned long long*,char*) ; 

__attribute__((used)) static int FUNC4(struct mirror_set *ms, struct dm_target *ti,
		      unsigned int mirror, char **argv)
{
	unsigned long long offset;
	char dummy;
	int ret;

	if (FUNC3(argv[1], "%llu%c", &offset, &dummy) != 1 ||
	    offset != (sector_t)offset) {
		ti->error = "Invalid offset";
		return -EINVAL;
	}

	ret = FUNC1(ti, argv[0], FUNC2(ti->table),
			    &ms->mirror[mirror].dev);
	if (ret) {
		ti->error = "Device lookup failure";
		return ret;
	}

	ms->mirror[mirror].ms = ms;
	FUNC0(&(ms->mirror[mirror].error_count), 0);
	ms->mirror[mirror].error_type = 0;
	ms->mirror[mirror].offset = offset;

	return 0;
}