#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_6__ ;
typedef  struct TYPE_15__   TYPE_5__ ;
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {int family; } ;
struct nvif_device {TYPE_2__ info; } ;
struct nouveau_encoder {int dummy; } ;
struct TYPE_11__ {struct nvif_device device; } ;
struct nouveau_drm {TYPE_1__ client; } ;
struct nouveau_backlight {scalar_t__ id; TYPE_5__* dev; } ;
struct drm_connector {scalar_t__ connector_type; int /*<<< orphan*/  kdev; int /*<<< orphan*/  dev; } ;
struct backlight_properties {int /*<<< orphan*/  member_0; } ;
struct backlight_ops {int dummy; } ;
struct TYPE_16__ {struct nouveau_backlight* backlight; } ;
struct TYPE_13__ {int /*<<< orphan*/  brightness; } ;
struct TYPE_15__ {TYPE_4__* ops; TYPE_3__ props; } ;
struct TYPE_14__ {int /*<<< orphan*/  (* get_brightness ) (TYPE_5__*) ;} ;

/* Variables and functions */
 int BL_NAME_SIZE ; 
 int /*<<< orphan*/  DCB_OUTPUT_DP ; 
 int /*<<< orphan*/  DCB_OUTPUT_LVDS ; 
 scalar_t__ DRM_MODE_CONNECTOR_LVDS ; 
 scalar_t__ DRM_MODE_CONNECTOR_eDP ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (TYPE_5__*) ; 
#define  NV_DEVICE_INFO_V0_CURIE 135 
#define  NV_DEVICE_INFO_V0_FERMI 134 
#define  NV_DEVICE_INFO_V0_KEPLER 133 
#define  NV_DEVICE_INFO_V0_MAXWELL 132 
#define  NV_DEVICE_INFO_V0_PASCAL 131 
#define  NV_DEVICE_INFO_V0_TESLA 130 
#define  NV_DEVICE_INFO_V0_TURING 129 
#define  NV_DEVICE_INFO_V0_VOLTA 128 
 int /*<<< orphan*/  FUNC1 (struct nouveau_drm*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct nouveau_drm*,char*) ; 
 int FUNC3 (TYPE_5__*) ; 
 scalar_t__ FUNC4 () ; 
 TYPE_5__* FUNC5 (char*,int /*<<< orphan*/ ,struct nouveau_encoder*,struct backlight_ops const*,struct backlight_properties*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_5__*) ; 
 int /*<<< orphan*/  bl_ida ; 
 struct nouveau_encoder* FUNC7 (struct drm_connector*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (struct nouveau_backlight*) ; 
 struct nouveau_backlight* FUNC10 (int,int /*<<< orphan*/ ) ; 
 TYPE_6__* FUNC11 (struct drm_connector*) ; 
 struct nouveau_drm* FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (char*,struct nouveau_backlight*) ; 
 int FUNC14 (struct nouveau_encoder*,struct backlight_properties*,struct backlight_ops const**) ; 
 int FUNC15 (struct nouveau_encoder*,struct backlight_properties*,struct backlight_ops const**) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_5__*) ; 

int
FUNC17(struct drm_connector *connector)
{
	struct nouveau_drm *drm = FUNC12(connector->dev);
	struct nouveau_backlight *bl;
	struct nouveau_encoder *nv_encoder = NULL;
	struct nvif_device *device = &drm->client.device;
	char backlight_name[BL_NAME_SIZE];
	struct backlight_properties props = {0};
	const struct backlight_ops *ops;
	int ret;

	if (FUNC4()) {
		FUNC2(drm, "Apple GMUX detected: not registering Nouveau backlight interface\n");
		return 0;
	}

	if (connector->connector_type == DRM_MODE_CONNECTOR_LVDS)
		nv_encoder = FUNC7(connector, DCB_OUTPUT_LVDS);
	else if (connector->connector_type == DRM_MODE_CONNECTOR_eDP)
		nv_encoder = FUNC7(connector, DCB_OUTPUT_DP);
	else
		return 0;

	if (!nv_encoder)
		return 0;

	switch (device->info.family) {
	case NV_DEVICE_INFO_V0_CURIE:
		ret = FUNC14(nv_encoder, &props, &ops);
		break;
	case NV_DEVICE_INFO_V0_TESLA:
	case NV_DEVICE_INFO_V0_FERMI:
	case NV_DEVICE_INFO_V0_KEPLER:
	case NV_DEVICE_INFO_V0_MAXWELL:
	case NV_DEVICE_INFO_V0_PASCAL:
	case NV_DEVICE_INFO_V0_VOLTA:
	case NV_DEVICE_INFO_V0_TURING:
		ret = FUNC15(nv_encoder, &props, &ops);
		break;
	default:
		return 0;
	}

	if (ret == -ENODEV)
		return 0;
	else if (ret)
		return ret;

	bl = FUNC10(sizeof(*bl), GFP_KERNEL);
	if (!bl)
		return -ENOMEM;

	if (!FUNC13(backlight_name, bl)) {
		FUNC1(drm, "Failed to retrieve a unique name for the backlight interface\n");
		goto fail_alloc;
	}

	bl->dev = FUNC5(backlight_name, connector->kdev,
					    nv_encoder, ops, &props);
	if (FUNC0(bl->dev)) {
		if (bl->id >= 0)
			FUNC8(&bl_ida, bl->id);
		ret = FUNC3(bl->dev);
		goto fail_alloc;
	}

	FUNC11(connector)->backlight = bl;
	bl->dev->props.brightness = bl->dev->ops->get_brightness(bl->dev);
	FUNC6(bl->dev);

	return 0;

fail_alloc:
	FUNC9(bl);
	return ret;
}