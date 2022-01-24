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
struct TYPE_2__ {int /*<<< orphan*/  node; } ;
struct sync_file {int /*<<< orphan*/  fence; int /*<<< orphan*/  wq; TYPE_1__ cb; int /*<<< orphan*/  flags; } ;
struct file {struct sync_file* private_data; } ;
typedef  int /*<<< orphan*/  poll_table ;
typedef  int /*<<< orphan*/  __poll_t ;

/* Variables and functions */
 int /*<<< orphan*/  EPOLLIN ; 
 int /*<<< orphan*/  POLL_ENABLED ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  fence_check_cb_func ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct file*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static __poll_t FUNC6(struct file *file, poll_table *wait)
{
	struct sync_file *sync_file = file->private_data;

	FUNC3(file, &sync_file->wq, wait);

	if (FUNC2(&sync_file->cb.node) &&
	    !FUNC4(POLL_ENABLED, &sync_file->flags)) {
		if (FUNC0(sync_file->fence, &sync_file->cb,
					   fence_check_cb_func) < 0)
			FUNC5(&sync_file->wq);
	}

	return FUNC1(sync_file->fence) ? EPOLLIN : 0;
}