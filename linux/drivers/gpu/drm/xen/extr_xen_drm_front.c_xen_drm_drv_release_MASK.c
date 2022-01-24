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
struct TYPE_2__ {scalar_t__ be_alloc; } ;
struct xen_drm_front_info {int /*<<< orphan*/  xb_dev; TYPE_1__ cfg; } ;
struct xen_drm_front_drm_info {struct xen_drm_front_info* front_info; struct xen_drm_front_drm_info* dev_private; } ;
struct drm_device {struct xen_drm_front_info* front_info; struct drm_device* dev_private; } ;

/* Variables and functions */
 int /*<<< orphan*/  XenbusStateInitialising ; 
 int /*<<< orphan*/  FUNC0 (struct xen_drm_front_drm_info*) ; 
 int /*<<< orphan*/  FUNC1 (struct xen_drm_front_drm_info*) ; 
 int /*<<< orphan*/  FUNC2 (struct xen_drm_front_drm_info*) ; 
 int /*<<< orphan*/  FUNC3 (struct xen_drm_front_drm_info*) ; 
 int /*<<< orphan*/  FUNC4 (struct xen_drm_front_drm_info*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct drm_device *dev)
{
	struct xen_drm_front_drm_info *drm_info = dev->dev_private;
	struct xen_drm_front_info *front_info = drm_info->front_info;

	FUNC4(drm_info);

	FUNC0(dev);
	FUNC2(dev);

	FUNC1(dev);
	FUNC3(dev);

	if (front_info->cfg.be_alloc)
		FUNC5(front_info->xb_dev,
				    XenbusStateInitialising);

	FUNC3(drm_info);
}