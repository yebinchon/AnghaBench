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
struct mddev {struct bitmap* bitmap; } ;
struct bitmap {int /*<<< orphan*/  behind_writes; int /*<<< orphan*/  behind_wait; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct mddev*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 

void FUNC4(struct mddev *mddev)
{
	struct bitmap *bitmap = mddev->bitmap;

	/* wait for behind writes to complete */
	if (bitmap && FUNC0(&bitmap->behind_writes) > 0) {
		FUNC2("md:%s: behind writes in progress - waiting to stop.\n",
			 FUNC1(mddev));
		/* need to kick something here to make sure I/O goes? */
		FUNC3(bitmap->behind_wait,
			   FUNC0(&bitmap->behind_writes) == 0);
	}
}