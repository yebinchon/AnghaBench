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
struct ib_uverbs_event_queue {int /*<<< orphan*/  lock; int /*<<< orphan*/  event_list; int /*<<< orphan*/  poll_wait; } ;
struct file {int dummy; } ;
typedef  int __poll_t ;

/* Variables and functions */
 int EPOLLIN ; 
 int EPOLLRDNORM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct file*,int /*<<< orphan*/ *,struct poll_table_struct*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static __poll_t FUNC4(struct ib_uverbs_event_queue *ev_queue,
					 struct file *filp,
					 struct poll_table_struct *wait)
{
	__poll_t pollflags = 0;

	FUNC1(filp, &ev_queue->poll_wait, wait);

	FUNC2(&ev_queue->lock);
	if (!FUNC0(&ev_queue->event_list))
		pollflags = EPOLLIN | EPOLLRDNORM;
	FUNC3(&ev_queue->lock);

	return pollflags;
}