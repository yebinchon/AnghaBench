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
struct dm_target {char* error; int /*<<< orphan*/  table; } ;
struct delay_class {unsigned long long start; unsigned long long delay; int /*<<< orphan*/  dev; } ;
typedef  unsigned long long sector_t ;

/* Variables and functions */
 int EINVAL ; 
 int FUNC0 (struct dm_target*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (char*,char*,unsigned long long*,char*) ; 

__attribute__((used)) static int FUNC3(struct dm_target *ti, struct delay_class *c, char **argv)
{
	int ret;
	unsigned long long tmpll;
	char dummy;

	if (FUNC2(argv[1], "%llu%c", &tmpll, &dummy) != 1 || tmpll != (sector_t)tmpll) {
		ti->error = "Invalid device sector";
		return -EINVAL;
	}
	c->start = tmpll;

	if (FUNC2(argv[2], "%u%c", &c->delay, &dummy) != 1) {
		ti->error = "Invalid delay";
		return -EINVAL;
	}

	ret = FUNC0(ti, argv[0], FUNC1(ti->table), &c->dev);
	if (ret) {
		ti->error = "Device lookup failed";
		return ret;
	}

	return 0;
}