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
struct nouveau_drm {int /*<<< orphan*/ * fbcon; } ;
struct drm_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct nouveau_drm* FUNC1 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_device*,int /*<<< orphan*/ *) ; 

void
FUNC4(struct drm_device *dev)
{
	struct nouveau_drm *drm = FUNC1(dev);

	if (!drm->fbcon)
		return;

	FUNC2(dev);
	FUNC3(dev, drm->fbcon);
	FUNC0(drm->fbcon);
	drm->fbcon = NULL;
}