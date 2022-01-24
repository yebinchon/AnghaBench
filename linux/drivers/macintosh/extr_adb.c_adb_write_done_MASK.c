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
struct adbdev_state {int complete; int /*<<< orphan*/  lock; int /*<<< orphan*/  wait_queue; struct adbdev_state* next; struct adbdev_state* completed; int /*<<< orphan*/  n_pending; int /*<<< orphan*/  inuse; scalar_t__ reply_len; scalar_t__ arg; } ;
struct adb_request {int complete; int /*<<< orphan*/  lock; int /*<<< orphan*/  wait_queue; struct adb_request* next; struct adb_request* completed; int /*<<< orphan*/  n_pending; int /*<<< orphan*/  inuse; scalar_t__ reply_len; scalar_t__ arg; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct adbdev_state*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct adb_request *req)
{
	struct adbdev_state *state = (struct adbdev_state *) req->arg;
	unsigned long flags;

	if (!req->complete) {
		req->reply_len = 0;
		req->complete = 1;
	}
	FUNC3(&state->lock, flags);
	FUNC0(&state->n_pending);
	if (!state->inuse) {
		FUNC2(req);
		if (FUNC1(&state->n_pending) == 0) {
			FUNC4(&state->lock, flags);
			FUNC2(state);
			return;
		}
	} else {
		struct adb_request **ap = &state->completed;
		while (*ap != NULL)
			ap = &(*ap)->next;
		req->next = NULL;
		*ap = req;
		FUNC5(&state->wait_queue);
	}
	FUNC4(&state->lock, flags);
}