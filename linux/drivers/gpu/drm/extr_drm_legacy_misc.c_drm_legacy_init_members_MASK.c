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
struct drm_device {int /*<<< orphan*/  ctxlist_mutex; int /*<<< orphan*/  buf_lock; int /*<<< orphan*/  maplist; int /*<<< orphan*/  vmalist; int /*<<< orphan*/  ctxlist; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void FUNC3(struct drm_device *dev)
{
	FUNC0(&dev->ctxlist);
	FUNC0(&dev->vmalist);
	FUNC0(&dev->maplist);
	FUNC2(&dev->buf_lock);
	FUNC1(&dev->ctxlist_mutex);
}