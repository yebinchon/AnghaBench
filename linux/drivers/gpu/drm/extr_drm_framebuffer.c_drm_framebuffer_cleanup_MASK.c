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
struct drm_framebuffer {int /*<<< orphan*/  head; struct drm_device* dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  fb_lock; int /*<<< orphan*/  num_fb; } ;
struct drm_device {TYPE_1__ mode_config; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void FUNC3(struct drm_framebuffer *fb)
{
	struct drm_device *dev = fb->dev;

	FUNC1(&dev->mode_config.fb_lock);
	FUNC0(&fb->head);
	dev->mode_config.num_fb--;
	FUNC2(&dev->mode_config.fb_lock);
}