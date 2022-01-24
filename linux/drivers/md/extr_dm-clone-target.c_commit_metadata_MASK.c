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
struct clone {int /*<<< orphan*/  commit_lock; TYPE_1__* ti; int /*<<< orphan*/  cmd; } ;
struct TYPE_2__ {int /*<<< orphan*/  table; } ;

/* Variables and functions */
 scalar_t__ CM_READ_ONLY ; 
 int EPERM ; 
 int /*<<< orphan*/  FUNC0 (struct clone*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct clone*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int) ; 

__attribute__((used)) static int FUNC9(struct clone *clone)
{
	int r = 0;

	FUNC6(&clone->commit_lock);

	if (!FUNC1(clone->cmd))
		goto out;

	if (FUNC8(FUNC5(clone) >= CM_READ_ONLY)) {
		r = -EPERM;
		goto out;
	}

	r = FUNC3(clone->cmd);

	if (FUNC8(r)) {
		FUNC0(clone, "dm_clone_metadata_commit", r);
		goto out;
	}

	if (FUNC2(clone->cmd))
		FUNC4(clone->ti->table);
out:
	FUNC7(&clone->commit_lock);

	return r;
}