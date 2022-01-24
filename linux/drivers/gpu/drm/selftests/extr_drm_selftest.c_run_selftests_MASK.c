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
struct drm_selftest {int (* func ) (void*) ;int /*<<< orphan*/  name; int /*<<< orphan*/  enabled; } ;

/* Variables and functions */
 int ENOTTY ; 
 scalar_t__ FUNC0 (int,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct drm_selftest*,unsigned long) ; 
 int FUNC4 (void*) ; 

__attribute__((used)) static int FUNC5(struct drm_selftest *st,
			 unsigned long count,
			 void *data)
{
	int err = 0;

	FUNC3(st, count);

	/* Tests are listed in natural order in drm_*_selftests.h */
	for (; count--; st++) {
		if (!st->enabled)
			continue;

		FUNC1("drm: Running %s\n", st->name);
		err = st->func(data);
		if (err)
			break;
	}

	if (FUNC0(err > 0 || err == -ENOTTY,
		 "%s returned %d, conflicting with selftest's magic values!\n",
		 st->name, err))
		err = -1;

	FUNC2();
	return err;
}