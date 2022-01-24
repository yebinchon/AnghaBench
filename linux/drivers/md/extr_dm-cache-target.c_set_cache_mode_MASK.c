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
struct TYPE_2__ {int mode; } ;
struct cache {TYPE_1__ features; int /*<<< orphan*/  cmd; } ;
typedef  enum cache_metadata_mode { ____Placeholder_cache_metadata_mode } cache_metadata_mode ;

/* Variables and functions */
#define  CM_FAIL 130 
#define  CM_READ_ONLY 129 
#define  CM_WRITE 128 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct cache*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (struct cache*) ; 
 int /*<<< orphan*/  FUNC6 (struct cache*,int) ; 

__attribute__((used)) static void FUNC7(struct cache *cache, enum cache_metadata_mode new_mode)
{
	bool needs_check;
	enum cache_metadata_mode old_mode = FUNC5(cache);

	if (FUNC2(cache->cmd, &needs_check)) {
		FUNC0("%s: unable to read needs_check flag, setting failure mode.",
		      FUNC1(cache));
		new_mode = CM_FAIL;
	}

	if (new_mode == CM_WRITE && needs_check) {
		FUNC0("%s: unable to switch cache to write mode until repaired.",
		      FUNC1(cache));
		if (old_mode != new_mode)
			new_mode = old_mode;
		else
			new_mode = CM_READ_ONLY;
	}

	/* Never move out of fail mode */
	if (old_mode == CM_FAIL)
		new_mode = CM_FAIL;

	switch (new_mode) {
	case CM_FAIL:
	case CM_READ_ONLY:
		FUNC3(cache->cmd);
		break;

	case CM_WRITE:
		FUNC4(cache->cmd);
		break;
	}

	cache->features.mode = new_mode;

	if (new_mode != old_mode)
		FUNC6(cache, new_mode);
}