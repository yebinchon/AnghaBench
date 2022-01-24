#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct timer_list {int dummy; } ;
struct drm_device {scalar_t__ dev_private; } ;
struct TYPE_5__ {int blit_queues; } ;
typedef  TYPE_1__ drm_via_private_t ;
struct TYPE_6__ {int /*<<< orphan*/  poll_timer; struct drm_device* dev; } ;
typedef  TYPE_2__ drm_via_blitq_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,unsigned long) ; 
 TYPE_2__* blitq ; 
 TYPE_2__* FUNC1 (int /*<<< orphan*/ ,struct timer_list*,int /*<<< orphan*/ ) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  poll_timer ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_device*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC5(struct timer_list *t)
{
	drm_via_blitq_t *blitq = FUNC1(blitq, t, poll_timer);
	struct drm_device *dev = blitq->dev;
	int engine = (int)
		(blitq - ((drm_via_private_t *)dev->dev_private)->blit_queues);

	FUNC0("Polling timer called for engine %d, jiffies %lu\n", engine,
		  (unsigned long) jiffies);

	FUNC4(dev, engine, 0);

	if (!FUNC3(&blitq->poll_timer)) {
		FUNC2(&blitq->poll_timer, jiffies + 1);

	       /*
		* Rerun handler to delete timer if engines are off, and
		* to shorten abort latency. This is a little nasty.
		*/

	       FUNC4(dev, engine, 0);

	}
}