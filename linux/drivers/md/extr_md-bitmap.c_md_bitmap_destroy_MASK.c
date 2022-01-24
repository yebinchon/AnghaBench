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
struct TYPE_3__ {int /*<<< orphan*/  mutex; } ;
struct mddev {TYPE_2__* thread; TYPE_1__ bitmap_info; int /*<<< orphan*/  lock; struct bitmap* bitmap; int /*<<< orphan*/ * wb_info_pool; } ;
struct bitmap {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  timeout; } ;

/* Variables and functions */
 int /*<<< orphan*/  MAX_SCHEDULE_TIMEOUT ; 
 int /*<<< orphan*/  FUNC0 (struct bitmap*) ; 
 int /*<<< orphan*/  FUNC1 (struct mddev*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

void FUNC7(struct mddev *mddev)
{
	struct bitmap *bitmap = mddev->bitmap;

	if (!bitmap) /* there was no bitmap */
		return;

	FUNC1(mddev);
	FUNC2(mddev->wb_info_pool);
	mddev->wb_info_pool = NULL;

	FUNC3(&mddev->bitmap_info.mutex);
	FUNC5(&mddev->lock);
	mddev->bitmap = NULL; /* disconnect from the md device */
	FUNC6(&mddev->lock);
	FUNC4(&mddev->bitmap_info.mutex);
	if (mddev->thread)
		mddev->thread->timeout = MAX_SCHEDULE_TIMEOUT;

	FUNC0(bitmap);
}