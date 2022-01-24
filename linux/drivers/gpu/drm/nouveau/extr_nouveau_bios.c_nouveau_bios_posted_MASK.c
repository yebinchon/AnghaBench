#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ family; } ;
struct TYPE_5__ {TYPE_1__ info; } ;
struct TYPE_6__ {TYPE_2__ device; } ;
struct nouveau_drm {TYPE_3__ client; } ;
struct drm_device {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct drm_device*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ NV_DEVICE_INFO_V0_TESLA ; 
 struct nouveau_drm* FUNC1 (struct drm_device*) ; 

__attribute__((used)) static bool
FUNC2(struct drm_device *dev)
{
	struct nouveau_drm *drm = FUNC1(dev);
	unsigned htotal;

	if (drm->client.device.info.family >= NV_DEVICE_INFO_V0_TESLA)
		return true;

	htotal  = FUNC0(dev, 0, 0x06);
	htotal |= (FUNC0(dev, 0, 0x07) & 0x01) << 8;
	htotal |= (FUNC0(dev, 0, 0x07) & 0x20) << 4;
	htotal |= (FUNC0(dev, 0, 0x25) & 0x01) << 10;
	htotal |= (FUNC0(dev, 0, 0x41) & 0x01) << 11;
	return (htotal != 0);
}