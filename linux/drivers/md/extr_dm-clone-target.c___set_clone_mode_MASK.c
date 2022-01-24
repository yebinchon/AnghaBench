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
struct clone {TYPE_1__* ti; int /*<<< orphan*/  mode; int /*<<< orphan*/  cmd; } ;
typedef  enum clone_metadata_mode { ____Placeholder_clone_metadata_mode } clone_metadata_mode ;
struct TYPE_2__ {int /*<<< orphan*/  table; } ;

/* Variables and functions */
#define  CM_FAIL 130 
#define  CM_READ_ONLY 129 
#define  CM_WRITE 128 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct clone*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (struct clone*) ; 

__attribute__((used)) static void FUNC7(struct clone *clone, enum clone_metadata_mode new_mode)
{
	const char *descs[] = {
		"read-write",
		"read-only",
		"fail"
	};

	enum clone_metadata_mode old_mode = FUNC6(clone);

	/* Never move out of fail mode */
	if (old_mode == CM_FAIL)
		new_mode = CM_FAIL;

	switch (new_mode) {
	case CM_FAIL:
	case CM_READ_ONLY:
		FUNC3(clone->cmd);
		break;

	case CM_WRITE:
		FUNC4(clone->cmd);
		break;
	}

	FUNC1(clone->mode, new_mode);

	if (new_mode != old_mode) {
		FUNC5(clone->ti->table);
		FUNC0("%s: Switching to %s mode", FUNC2(clone),
		       descs[(int)new_mode]);
	}
}