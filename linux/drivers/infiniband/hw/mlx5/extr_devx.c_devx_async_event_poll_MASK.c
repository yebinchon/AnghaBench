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
struct poll_table_struct {int dummy; } ;
struct file {struct devx_async_event_file* private_data; } ;
struct devx_async_event_file {int /*<<< orphan*/  lock; int /*<<< orphan*/  event_list; scalar_t__ is_destroyed; int /*<<< orphan*/  poll_wait; } ;
typedef  int __poll_t ;

/* Variables and functions */
 int EPOLLIN ; 
 int EPOLLRDHUP ; 
 int EPOLLRDNORM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct file*,int /*<<< orphan*/ *,struct poll_table_struct*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static __poll_t FUNC4(struct file *filp,
				      struct poll_table_struct *wait)
{
	struct devx_async_event_file *ev_file = filp->private_data;
	__poll_t pollflags = 0;

	FUNC1(filp, &ev_file->poll_wait, wait);

	FUNC2(&ev_file->lock);
	if (ev_file->is_destroyed)
		pollflags = EPOLLIN | EPOLLRDNORM | EPOLLRDHUP;
	else if (!FUNC0(&ev_file->event_list))
		pollflags = EPOLLIN | EPOLLRDNORM;
	FUNC3(&ev_file->lock);

	return pollflags;
}