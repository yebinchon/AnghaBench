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
typedef  int /*<<< orphan*/  u32 ;
struct drm_plane {int dummy; } ;
struct komeda_plane {struct komeda_layer* layer; struct drm_plane base; } ;
struct komeda_component {int /*<<< orphan*/  pipeline; int /*<<< orphan*/  id; int /*<<< orphan*/  name; } ;
struct komeda_layer {struct komeda_component base; int /*<<< orphan*/  supported_rots; int /*<<< orphan*/  layer_type; } ;
struct TYPE_2__ {struct komeda_dev* dev_private; } ;
struct komeda_kms_dev {TYPE_1__ base; } ;
struct komeda_dev {int /*<<< orphan*/  fmt_tbl; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DRM_COLOR_YCBCR_BT2020 ; 
 int /*<<< orphan*/  DRM_COLOR_YCBCR_BT601 ; 
 int /*<<< orphan*/  DRM_COLOR_YCBCR_BT709 ; 
 int /*<<< orphan*/  DRM_COLOR_YCBCR_FULL_RANGE ; 
 int /*<<< orphan*/  DRM_COLOR_YCBCR_LIMITED_RANGE ; 
 int /*<<< orphan*/  DRM_MODE_BLEND_COVERAGE ; 
 int /*<<< orphan*/  DRM_MODE_BLEND_PIXEL_NONE ; 
 int /*<<< orphan*/  DRM_MODE_BLEND_PREMULTI ; 
 int /*<<< orphan*/  DRM_MODE_ROTATE_0 ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int FUNC1 (struct drm_plane*) ; 
 int FUNC2 (struct drm_plane*,int) ; 
 int FUNC3 (struct drm_plane*,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct drm_plane*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct drm_plane*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (struct drm_plane*,int /*<<< orphan*/ *) ; 
 int FUNC7 (TYPE_1__*,struct drm_plane*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct komeda_kms_dev*,struct komeda_component*) ; 
 int /*<<< orphan*/  FUNC9 (struct komeda_kms_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (struct drm_plane*) ; 
 int /*<<< orphan*/  komeda_plane_funcs ; 
 int /*<<< orphan*/  komeda_plane_helper_funcs ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (struct komeda_kms_dev*,int /*<<< orphan*/ ,struct drm_plane*) ; 
 int /*<<< orphan*/  komeda_supported_modifiers ; 
 struct komeda_plane* FUNC14 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC15(struct komeda_kms_dev *kms,
			    struct komeda_layer *layer)
{
	struct komeda_dev *mdev = kms->base.dev_private;
	struct komeda_component *c = &layer->base;
	struct komeda_plane *kplane;
	struct drm_plane *plane;
	u32 *formats, n_formats = 0;
	int err;

	kplane = FUNC14(sizeof(*kplane), GFP_KERNEL);
	if (!kplane)
		return -ENOMEM;

	plane = &kplane->base;
	kplane->layer = layer;

	formats = FUNC10(&mdev->fmt_tbl,
					       layer->layer_type, &n_formats);

	err = FUNC7(&kms->base, plane,
			FUNC9(kms, c->pipeline),
			&komeda_plane_funcs,
			formats, n_formats, komeda_supported_modifiers,
			FUNC8(kms, c),
			"%s", c->name);

	FUNC12(formats);

	if (err)
		goto cleanup;

	FUNC6(plane, &komeda_plane_helper_funcs);

	err = FUNC4(plane, DRM_MODE_ROTATE_0,
						 layer->supported_rots);
	if (err)
		goto cleanup;

	err = FUNC1(plane);
	if (err)
		goto cleanup;

	err = FUNC2(plane,
			FUNC0(DRM_MODE_BLEND_PIXEL_NONE) |
			FUNC0(DRM_MODE_BLEND_PREMULTI)   |
			FUNC0(DRM_MODE_BLEND_COVERAGE));
	if (err)
		goto cleanup;

	err = FUNC3(plane,
			FUNC0(DRM_COLOR_YCBCR_BT601) |
			FUNC0(DRM_COLOR_YCBCR_BT709) |
			FUNC0(DRM_COLOR_YCBCR_BT2020),
			FUNC0(DRM_COLOR_YCBCR_LIMITED_RANGE) |
			FUNC0(DRM_COLOR_YCBCR_FULL_RANGE),
			DRM_COLOR_YCBCR_BT601,
			DRM_COLOR_YCBCR_LIMITED_RANGE);
	if (err)
		goto cleanup;

	err = FUNC5(plane, layer->base.id, 0, 8);
	if (err)
		goto cleanup;

	FUNC13(kms, c->pipeline, plane);

	return 0;
cleanup:
	FUNC11(plane);
	return err;
}