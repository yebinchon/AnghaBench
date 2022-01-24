#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct timer_list {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  queue; int /*<<< orphan*/  error; } ;
struct dmxdev_filter {TYPE_1__ buffer; TYPE_2__* dev; int /*<<< orphan*/  state; } ;
struct TYPE_4__ {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMXDEV_STATE_TIMEDOUT ; 
 int /*<<< orphan*/  ETIMEDOUT ; 
 struct dmxdev_filter* dmxdevfilter ; 
 struct dmxdev_filter* FUNC0 (int /*<<< orphan*/ ,struct timer_list*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  timer ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct timer_list *t)
{
	struct dmxdev_filter *dmxdevfilter = FUNC0(dmxdevfilter, t, timer);

	dmxdevfilter->buffer.error = -ETIMEDOUT;
	FUNC1(&dmxdevfilter->dev->lock);
	dmxdevfilter->state = DMXDEV_STATE_TIMEDOUT;
	FUNC2(&dmxdevfilter->dev->lock);
	FUNC3(&dmxdevfilter->buffer.queue);
}