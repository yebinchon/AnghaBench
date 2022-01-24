#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_21__   TYPE_9__ ;
typedef  struct TYPE_20__   TYPE_8__ ;
typedef  struct TYPE_19__   TYPE_7__ ;
typedef  struct TYPE_18__   TYPE_6__ ;
typedef  struct TYPE_17__   TYPE_5__ ;
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;
typedef  struct TYPE_12__   TYPE_11__ ;

/* Type definitions */
struct nvkm_device {TYPE_1__* func; } ;
struct TYPE_20__ {int /*<<< orphan*/  notifier_call; } ;
struct TYPE_14__ {scalar_t__ family; int chipset; } ;
struct TYPE_21__ {TYPE_2__ info; } ;
struct TYPE_17__ {TYPE_9__ device; } ;
struct TYPE_15__ {scalar_t__ entries; } ;
struct TYPE_16__ {TYPE_3__ dcb; } ;
struct nouveau_drm {TYPE_8__ acpi_nb; int /*<<< orphan*/  hpd_work; TYPE_5__ client; TYPE_4__ vbios; struct nouveau_display* display; } ;
struct TYPE_18__ {scalar_t__ oclass; } ;
struct TYPE_12__ {TYPE_6__ object; } ;
struct nouveau_display {int /*<<< orphan*/  (* dtor ) (struct drm_device*) ;TYPE_11__ disp; } ;
struct TYPE_19__ {int max_width; int max_height; int preferred_depth; int prefer_shadow; int async_page_flip; scalar_t__ num_crtc; scalar_t__ min_height; scalar_t__ min_width; int /*<<< orphan*/  fb_base; int /*<<< orphan*/ * funcs; } ;
struct drm_device {TYPE_7__ mode_config; } ;
struct TYPE_13__ {int /*<<< orphan*/  (* resource_addr ) (struct nvkm_device*,int) ;} ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ NV50_DISP ; 
 scalar_t__ NV_DEVICE_INFO_V0_CELSIUS ; 
 scalar_t__ NV_DEVICE_INFO_V0_FERMI ; 
 scalar_t__ NV_DEVICE_INFO_V0_TESLA ; 
 int /*<<< orphan*/  FUNC1 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct drm_device*) ; 
 struct nouveau_display* FUNC9 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  nouveau_display_acpi_ntfy ; 
 int /*<<< orphan*/  FUNC10 (struct drm_device*) ; 
 int /*<<< orphan*/  nouveau_display_hpd_work ; 
 int FUNC11 (struct drm_device*) ; 
 struct nouveau_drm* FUNC12 (struct drm_device*) ; 
 int /*<<< orphan*/  nouveau_mode_config_funcs ; 
 int nouveau_modeset ; 
 int FUNC13 (struct drm_device*) ; 
 int FUNC14 (struct drm_device*) ; 
 int FUNC15 (TYPE_9__*,int /*<<< orphan*/ ,TYPE_11__*) ; 
 struct nvkm_device* FUNC16 (TYPE_9__*) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_8__*) ; 
 int /*<<< orphan*/  FUNC18 (struct nvkm_device*,int) ; 
 int /*<<< orphan*/  FUNC19 (struct drm_device*) ; 

int
FUNC20(struct drm_device *dev)
{
	struct nouveau_drm *drm = FUNC12(dev);
	struct nvkm_device *device = FUNC16(&drm->client.device);
	struct nouveau_display *disp;
	int ret;

	disp = drm->display = FUNC9(sizeof(*disp), GFP_KERNEL);
	if (!disp)
		return -ENOMEM;

	FUNC5(dev);
	FUNC8(dev);
	FUNC7(dev);

	dev->mode_config.funcs = &nouveau_mode_config_funcs;
	dev->mode_config.fb_base = device->func->resource_addr(device, 1);

	dev->mode_config.min_width = 0;
	dev->mode_config.min_height = 0;
	if (drm->client.device.info.family < NV_DEVICE_INFO_V0_CELSIUS) {
		dev->mode_config.max_width = 2048;
		dev->mode_config.max_height = 2048;
	} else
	if (drm->client.device.info.family < NV_DEVICE_INFO_V0_TESLA) {
		dev->mode_config.max_width = 4096;
		dev->mode_config.max_height = 4096;
	} else
	if (drm->client.device.info.family < NV_DEVICE_INFO_V0_FERMI) {
		dev->mode_config.max_width = 8192;
		dev->mode_config.max_height = 8192;
	} else {
		dev->mode_config.max_width = 16384;
		dev->mode_config.max_height = 16384;
	}

	dev->mode_config.preferred_depth = 24;
	dev->mode_config.prefer_shadow = 1;

	if (drm->client.device.info.chipset < 0x11)
		dev->mode_config.async_page_flip = false;
	else
		dev->mode_config.async_page_flip = true;

	FUNC3(dev);
	FUNC1(dev);

	if (nouveau_modeset != 2 && drm->vbios.dcb.entries) {
		ret = FUNC15(&drm->client.device, 0, &disp->disp);
		if (ret == 0) {
			FUNC10(dev);
			if (disp->disp.object.oclass < NV50_DISP)
				ret = FUNC13(dev);
			else
				ret = FUNC14(dev);
		}
	} else {
		ret = 0;
	}

	if (ret)
		goto disp_create_err;

	FUNC6(dev);

	if (dev->mode_config.num_crtc) {
		ret = FUNC11(dev);
		if (ret)
			goto vblank_err;
	}

	FUNC0(&drm->hpd_work, nouveau_display_hpd_work);
#ifdef CONFIG_ACPI
	drm->acpi_nb.notifier_call = nouveau_display_acpi_ntfy;
	register_acpi_notifier(&drm->acpi_nb);
#endif

	return 0;

vblank_err:
	disp->dtor(dev);
disp_create_err:
	FUNC2(dev);
	FUNC4(dev);
	return ret;
}