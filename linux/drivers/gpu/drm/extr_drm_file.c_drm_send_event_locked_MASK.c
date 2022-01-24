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
struct drm_pending_event {TYPE_1__* file_priv; int /*<<< orphan*/  link; int /*<<< orphan*/  pending_link; scalar_t__ fence; int /*<<< orphan*/ * completion; int /*<<< orphan*/  (* completion_release ) (int /*<<< orphan*/ *) ;} ;
struct drm_device {int /*<<< orphan*/  event_lock; } ;
struct TYPE_2__ {int /*<<< orphan*/  event_wait; int /*<<< orphan*/  event_list; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_pending_event*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

void FUNC9(struct drm_device *dev, struct drm_pending_event *e)
{
	FUNC0(&dev->event_lock);

	if (e->completion) {
		FUNC1(e->completion);
		e->completion_release(e->completion);
		e->completion = NULL;
	}

	if (e->fence) {
		FUNC3(e->fence);
		FUNC2(e->fence);
	}

	if (!e->file_priv) {
		FUNC4(e);
		return;
	}

	FUNC6(&e->pending_link);
	FUNC5(&e->link,
		      &e->file_priv->event_list);
	FUNC8(&e->file_priv->event_wait);
}