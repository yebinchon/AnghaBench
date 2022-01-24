#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_6__ ;
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int chipset; } ;
struct TYPE_10__ {int /*<<< orphan*/  object; TYPE_2__ info; } ;
struct TYPE_13__ {TYPE_3__ device; int /*<<< orphan*/  base; } ;
struct TYPE_8__ {int /*<<< orphan*/  lock; } ;
struct nouveau_drm {TYPE_6__ master; TYPE_6__ client; TYPE_1__ tile; int /*<<< orphan*/  clients; struct drm_device* dev; } ;
struct TYPE_11__ {scalar_t__ num_crtc; } ;
struct drm_device {int irq_enabled; int /*<<< orphan*/  dev; TYPE_4__ mode_config; struct nouveau_drm* dev_private; } ;
struct TYPE_12__ {int /*<<< orphan*/  debug; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct nouveau_drm*) ; 
 struct nouveau_drm* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct nouveau_drm*) ; 
 int /*<<< orphan*/  FUNC4 (struct nouveau_drm*) ; 
 int FUNC5 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_6__*) ; 
 int FUNC8 (struct nouveau_drm*,char*,TYPE_6__*) ; 
 int /*<<< orphan*/  nouveau_debug ; 
 int /*<<< orphan*/  FUNC9 (struct nouveau_drm*) ; 
 int FUNC10 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC11 (struct drm_device*) ; 
 int FUNC12 (struct drm_device*,int,int) ; 
 int /*<<< orphan*/  FUNC13 (struct nouveau_drm*) ; 
 int /*<<< orphan*/  FUNC14 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC15 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC16 (struct drm_device*) ; 
 scalar_t__ FUNC17 () ; 
 int /*<<< orphan*/  FUNC18 (struct nouveau_drm*) ; 
 int /*<<< orphan*/  FUNC19 (struct nouveau_drm*) ; 
 int FUNC20 (struct nouveau_drm*) ; 
 int /*<<< orphan*/  FUNC21 (struct nouveau_drm*) ; 
 int /*<<< orphan*/  FUNC22 (struct nouveau_drm*) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *,int,int,int) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ ,char*) ; 
 TYPE_5__* FUNC25 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC28 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC29 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC30 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC31 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC32 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC33(struct drm_device *dev)
{
	struct nouveau_drm *drm;
	int ret;

	if (!(drm = FUNC2(sizeof(*drm), GFP_KERNEL)))
		return -ENOMEM;
	dev->dev_private = drm;
	drm->dev = dev;

	ret = FUNC8(drm, "DRM-master", &drm->master);
	if (ret)
		goto fail_alloc;

	ret = FUNC8(drm, "DRM", &drm->client);
	if (ret)
		goto fail_master;

	dev->irq_enabled = true;

	FUNC25(&drm->client.base)->debug =
		FUNC24(nouveau_debug, "DRM");

	FUNC0(&drm->clients);
	FUNC32(&drm->tile.lock);

	/* workaround an odd issue on nvc1 by disabling the device's
	 * nosnoop capability.  hopefully won't cause issues until a
	 * better fix is found - assuming there is one...
	 */
	if (drm->client.device.info.chipset == 0xc1)
		FUNC23(&drm->client.device.object, 0x00088080, 0x00000800, 0x00000000);

	FUNC22(drm);

	ret = FUNC20(drm);
	if (ret)
		goto fail_ttm;

	ret = FUNC5(dev);
	if (ret)
		goto fail_bios;

	FUNC4(drm);

	ret = FUNC10(dev);
	if (ret)
		goto fail_dispctor;

	if (dev->mode_config.num_crtc) {
		ret = FUNC12(dev, false, false);
		if (ret)
			goto fail_dispinit;
	}

	FUNC9(drm);
	FUNC15(dev);
	FUNC18(drm);
	FUNC13(drm);
	FUNC14(dev);
	FUNC16(dev);

	if (FUNC17()) {
		FUNC31(dev->dev);
		FUNC30(dev->dev, 5000);
		FUNC29(dev->dev);
		FUNC26(dev->dev);
		FUNC27(dev->dev);
		FUNC28(dev->dev);
	}

	return 0;

fail_dispinit:
	FUNC11(dev);
fail_dispctor:
	FUNC3(drm);
	FUNC6(dev);
fail_bios:
	FUNC19(drm);
fail_ttm:
	FUNC21(drm);
	FUNC7(&drm->client);
fail_master:
	FUNC7(&drm->master);
fail_alloc:
	FUNC1(drm);
	return ret;
}