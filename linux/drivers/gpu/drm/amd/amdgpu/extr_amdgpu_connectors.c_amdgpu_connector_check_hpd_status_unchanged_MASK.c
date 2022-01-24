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
struct drm_connector {int status; struct drm_device* dev; } ;
struct amdgpu_device {int dummy; } ;
struct TYPE_2__ {scalar_t__ hpd; } ;
struct amdgpu_connector {TYPE_1__ hpd; } ;
typedef  enum drm_connector_status { ____Placeholder_drm_connector_status } drm_connector_status ;

/* Variables and functions */
 scalar_t__ AMDGPU_HPD_NONE ; 
 scalar_t__ FUNC0 (struct amdgpu_device*,scalar_t__) ; 
 int connector_status_connected ; 
 int connector_status_disconnected ; 
 struct amdgpu_connector* FUNC1 (struct drm_connector*) ; 

__attribute__((used)) static bool
FUNC2(struct drm_connector *connector)
{
	struct drm_device *dev = connector->dev;
	struct amdgpu_device *adev = dev->dev_private;
	struct amdgpu_connector *amdgpu_connector = FUNC1(connector);
	enum drm_connector_status status;

	if (amdgpu_connector->hpd.hpd != AMDGPU_HPD_NONE) {
		if (FUNC0(adev, amdgpu_connector->hpd.hpd))
			status = connector_status_connected;
		else
			status = connector_status_disconnected;
		if (connector->status == status)
			return true;
	}

	return false;
}