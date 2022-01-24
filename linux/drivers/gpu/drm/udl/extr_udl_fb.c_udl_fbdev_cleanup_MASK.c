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
struct udl_device {int /*<<< orphan*/ * fbdev; } ;
struct drm_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct udl_device* FUNC1 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_device*,int /*<<< orphan*/ *) ; 

void FUNC3(struct drm_device *dev)
{
	struct udl_device *udl = FUNC1(dev);
	if (!udl->fbdev)
		return;

	FUNC2(dev, udl->fbdev);
	FUNC0(udl->fbdev);
	udl->fbdev = NULL;
}