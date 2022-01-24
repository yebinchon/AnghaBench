#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
typedef  int u64 ;
typedef  int /*<<< orphan*/  u32 ;
struct malidp_plane {int /*<<< orphan*/  base; TYPE_4__* layer; TYPE_5__* hwdev; } ;
struct malidp_hw_regmap {int features; int n_pixel_formats; int n_layers; TYPE_4__* layers; TYPE_3__* pixel_formats; } ;
struct malidp_drm {TYPE_5__* dev; } ;
struct TYPE_7__ {int num_crtc; } ;
struct drm_device {TYPE_2__ mode_config; struct malidp_drm* dev_private; } ;
typedef  enum drm_plane_type { ____Placeholder_drm_plane_type } drm_plane_type ;
typedef  enum drm_color_range { ____Placeholder_drm_color_range } drm_color_range ;
typedef  enum drm_color_encoding { ____Placeholder_drm_color_encoding } drm_color_encoding ;
struct TYPE_10__ {TYPE_1__* hw; } ;
struct TYPE_9__ {int id; scalar_t__ base; } ;
struct TYPE_8__ {int layer; int /*<<< orphan*/  format; } ;
struct TYPE_6__ {struct malidp_hw_regmap map; } ;

/* Variables and functions */
 int const AFBC_SPLIT ; 
 unsigned int FUNC0 (int) ; 
 int DE_SMART ; 
 int DE_VIDEO1 ; 
 int DE_VIDEO2 ; 
 int DRM_COLOR_YCBCR_BT2020 ; 
 int DRM_COLOR_YCBCR_BT601 ; 
 int DRM_COLOR_YCBCR_BT709 ; 
 int DRM_COLOR_YCBCR_FULL_RANGE ; 
 int DRM_COLOR_YCBCR_LIMITED_RANGE ; 
 int const DRM_FORMAT_MOD_INVALID ; 
 int DRM_MODE_BLEND_COVERAGE ; 
 int DRM_MODE_BLEND_PIXEL_NONE ; 
 int DRM_MODE_BLEND_PREMULTI ; 
 unsigned long DRM_MODE_REFLECT_X ; 
 unsigned long DRM_MODE_REFLECT_Y ; 
 unsigned long DRM_MODE_ROTATE_0 ; 
 unsigned long DRM_MODE_ROTATE_180 ; 
 unsigned long DRM_MODE_ROTATE_270 ; 
 unsigned long DRM_MODE_ROTATE_90 ; 
 int DRM_PLANE_TYPE_OVERLAY ; 
 int DRM_PLANE_TYPE_PRIMARY ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  MALIDP_ALPHA_LUT ; 
 int MALIDP_DEVICE_AFBC_SUPPORT_SPLIT ; 
 scalar_t__ MALIDP_LAYER_COMPOSE ; 
 int MODIFIERS_COUNT_MAX ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned int) ; 
 int FUNC4 (int /*<<< orphan*/ *,unsigned int,unsigned int,int,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC7 (struct drm_device*,int /*<<< orphan*/ *,unsigned long,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int const*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 struct malidp_plane* FUNC10 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  malidp_de_plane_funcs ; 
 int /*<<< orphan*/  malidp_de_plane_helper_funcs ; 
 int /*<<< orphan*/  FUNC11 (struct malidp_plane*,int,int) ; 
 int* malidp_format_modifiers ; 
 int /*<<< orphan*/  FUNC12 (TYPE_5__*,int /*<<< orphan*/ ,scalar_t__) ; 

int FUNC13(struct drm_device *drm)
{
	struct malidp_drm *malidp = drm->dev_private;
	const struct malidp_hw_regmap *map = &malidp->dev->hw->map;
	struct malidp_plane *plane = NULL;
	enum drm_plane_type plane_type;
	unsigned long crtcs = 1 << drm->mode_config.num_crtc;
	unsigned long flags = DRM_MODE_ROTATE_0 | DRM_MODE_ROTATE_90 | DRM_MODE_ROTATE_180 |
			      DRM_MODE_ROTATE_270 | DRM_MODE_REFLECT_X | DRM_MODE_REFLECT_Y;
	unsigned int blend_caps = FUNC0(DRM_MODE_BLEND_PIXEL_NONE) |
				  FUNC0(DRM_MODE_BLEND_PREMULTI)   |
				  FUNC0(DRM_MODE_BLEND_COVERAGE);
	u32 *formats;
	int ret, i = 0, j = 0, n;
	u64 supported_modifiers[MODIFIERS_COUNT_MAX];
	const u64 *modifiers;

	modifiers = malidp_format_modifiers;

	if (!(map->features & MALIDP_DEVICE_AFBC_SUPPORT_SPLIT)) {
		/*
		 * Since our hardware does not support SPLIT, so build the list
		 * of supported modifiers excluding SPLIT ones.
		 */
		while (*modifiers != DRM_FORMAT_MOD_INVALID) {
			if (!(*modifiers & AFBC_SPLIT))
				supported_modifiers[j++] = *modifiers;

			modifiers++;
		}
		supported_modifiers[j++] = DRM_FORMAT_MOD_INVALID;
		modifiers = supported_modifiers;
	}

	formats = FUNC8(map->n_pixel_formats, sizeof(*formats), GFP_KERNEL);
	if (!formats) {
		ret = -ENOMEM;
		goto cleanup;
	}

	for (i = 0; i < map->n_layers; i++) {
		u8 id = map->layers[i].id;

		plane = FUNC10(sizeof(*plane), GFP_KERNEL);
		if (!plane) {
			ret = -ENOMEM;
			goto cleanup;
		}

		/* build the list of DRM supported formats based on the map */
		for (n = 0, j = 0;  j < map->n_pixel_formats; j++) {
			if ((map->pixel_formats[j].layer & id) == id)
				formats[n++] = map->pixel_formats[j].format;
		}

		plane_type = (i == 0) ? DRM_PLANE_TYPE_PRIMARY :
					DRM_PLANE_TYPE_OVERLAY;

		/*
		 * All the layers except smart layer supports AFBC modifiers.
		 */
		ret = FUNC7(drm, &plane->base, crtcs,
				&malidp_de_plane_funcs, formats, n,
				(id == DE_SMART) ? NULL : modifiers, plane_type,
				NULL);

		if (ret < 0)
			goto cleanup;

		FUNC6(&plane->base,
				     &malidp_de_plane_helper_funcs);
		plane->hwdev = malidp->dev;
		plane->layer = &map->layers[i];

		FUNC2(&plane->base);
		FUNC3(&plane->base, blend_caps);

		if (id == DE_SMART) {
			/* Skip the features which the SMART layer doesn't have. */
			continue;
		}

		FUNC5(&plane->base, DRM_MODE_ROTATE_0, flags);
		FUNC12(malidp->dev, MALIDP_ALPHA_LUT,
				plane->layer->base + MALIDP_LAYER_COMPOSE);

		/* Attach the YUV->RGB property only to video layers */
		if (id & (DE_VIDEO1 | DE_VIDEO2)) {
			/* default encoding for YUV->RGB is BT601 NARROW */
			enum drm_color_encoding enc = DRM_COLOR_YCBCR_BT601;
			enum drm_color_range range = DRM_COLOR_YCBCR_LIMITED_RANGE;

			ret = FUNC4(&plane->base,
					FUNC0(DRM_COLOR_YCBCR_BT601) | \
					FUNC0(DRM_COLOR_YCBCR_BT709) | \
					FUNC0(DRM_COLOR_YCBCR_BT2020),
					FUNC0(DRM_COLOR_YCBCR_LIMITED_RANGE) | \
					FUNC0(DRM_COLOR_YCBCR_FULL_RANGE),
					enc, range);
			if (!ret)
				/* program the HW registers */
				FUNC11(plane, enc, range);
			else
				FUNC1("Failed to create video layer %d color properties\n", id);
		}
	}

	FUNC9(formats);

	return 0;

cleanup:
	FUNC9(formats);

	return ret;
}