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
struct inode {int dummy; } ;
struct file {struct adbdev_state* private_data; } ;
struct adbdev_state {int /*<<< orphan*/  lock; scalar_t__ inuse; int /*<<< orphan*/ * completed; int /*<<< orphan*/  n_pending; } ;

/* Variables and functions */
 int /*<<< orphan*/  adb_mutex ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct adbdev_state*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC6(struct inode *inode, struct file *file)
{
	struct adbdev_state *state = file->private_data;
	unsigned long flags;

	FUNC2(&adb_mutex);
	if (state) {
		file->private_data = NULL;
		FUNC4(&state->lock, flags);
		if (FUNC0(&state->n_pending) == 0
		    && state->completed == NULL) {
			FUNC5(&state->lock, flags);
			FUNC1(state);
		} else {
			state->inuse = 0;
			FUNC5(&state->lock, flags);
		}
	}
	FUNC3(&adb_mutex);
	return 0;
}