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
struct drm_pending_event {scalar_t__ fence; int /*<<< orphan*/  pending_link; TYPE_2__* event; TYPE_1__* file_priv; } ;
struct drm_device {int /*<<< orphan*/  event_lock; } ;
struct TYPE_4__ {scalar_t__ length; } ;
struct TYPE_3__ {int /*<<< orphan*/  event_space; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_pending_event*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

void FUNC5(struct drm_device *dev,
			   struct drm_pending_event *p)
{
	unsigned long flags;
	FUNC3(&dev->event_lock, flags);
	if (p->file_priv) {
		p->file_priv->event_space += p->event->length;
		FUNC2(&p->pending_link);
	}
	FUNC4(&dev->event_lock, flags);

	if (p->fence)
		FUNC0(p->fence);

	FUNC1(p);
}