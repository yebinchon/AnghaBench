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
struct TYPE_4__ {int chipset; } ;
struct TYPE_5__ {TYPE_1__ info; } ;
struct TYPE_6__ {TYPE_2__ device; } ;
struct nouveau_drm {TYPE_3__ client; } ;
struct drm_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct drm_device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  NV_CIO_CRE_2E ; 
 int /*<<< orphan*/  NV_CIO_CRE_44 ; 
 int /*<<< orphan*/  NV_CIO_SR_LOCK_INDEX ; 
 struct nouveau_drm* FUNC2 (struct drm_device*) ; 

void
FUNC3(struct drm_device *dev, int owner)
{
	struct nouveau_drm *drm = FUNC2(dev);

	if (owner == 1)
		owner *= 3;

	if (drm->client.device.info.chipset == 0x11) {
		/* This might seem stupid, but the blob does it and
		 * omitting it often locks the system up.
		 */
		FUNC0(dev, 0, NV_CIO_SR_LOCK_INDEX);
		FUNC0(dev, 1, NV_CIO_SR_LOCK_INDEX);
	}

	/* CR44 is always changed on CRTC0 */
	FUNC1(dev, 0, NV_CIO_CRE_44, owner);

	if (drm->client.device.info.chipset == 0x11) {	/* set me harder */
		FUNC1(dev, 0, NV_CIO_CRE_2E, owner);
		FUNC1(dev, 0, NV_CIO_CRE_2E, owner);
	}
}