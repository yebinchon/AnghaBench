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
struct drm_device {struct amdgpu_device* dev_private; } ;
struct drm_connector {struct drm_device* dev; } ;
struct TYPE_2__ {int default_dispclk; } ;
struct amdgpu_device {TYPE_1__ clock; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct drm_connector*) ; 

bool FUNC1(struct drm_connector *connector)
{
	struct drm_device *dev = connector->dev;
	struct amdgpu_device *adev = dev->dev_private;

	if ((adev->clock.default_dispclk >= 53900) &&
	    FUNC0(connector)) {
		return true;
	}

	return false;
}