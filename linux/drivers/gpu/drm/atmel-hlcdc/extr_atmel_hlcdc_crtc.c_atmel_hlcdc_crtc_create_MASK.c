#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_4__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct drm_device {struct atmel_hlcdc_dc* dev_private; } ;
struct TYPE_6__ {int possible_crtcs; } ;
struct atmel_hlcdc_plane {TYPE_2__ base; } ;
struct atmel_hlcdc_dc {int /*<<< orphan*/ * crtc; TYPE_4__** layers; } ;
struct atmel_hlcdc_crtc {int id; int /*<<< orphan*/  base; struct atmel_hlcdc_dc* dc; } ;
struct TYPE_7__ {TYPE_1__* desc; } ;
struct TYPE_5__ {int type; } ;

/* Variables and functions */
#define  ATMEL_HLCDC_BASE_LAYER 129 
 int /*<<< orphan*/  ATMEL_HLCDC_CLUT_SIZE ; 
#define  ATMEL_HLCDC_CURSOR_LAYER 128 
 int ATMEL_HLCDC_MAX_LAYERS ; 
 int ATMEL_HLCDC_OVERLAY_LAYER ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  atmel_hlcdc_crtc_funcs ; 
 struct atmel_hlcdc_plane* FUNC1 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (struct drm_device*,int /*<<< orphan*/ *,TYPE_2__*,TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct atmel_hlcdc_crtc* FUNC8 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  lcdc_crtc_helper_funcs ; 

int FUNC9(struct drm_device *dev)
{
	struct atmel_hlcdc_plane *primary = NULL, *cursor = NULL;
	struct atmel_hlcdc_dc *dc = dev->dev_private;
	struct atmel_hlcdc_crtc *crtc;
	int ret;
	int i;

	crtc = FUNC8(sizeof(*crtc), GFP_KERNEL);
	if (!crtc)
		return -ENOMEM;

	crtc->dc = dc;

	for (i = 0; i < ATMEL_HLCDC_MAX_LAYERS; i++) {
		if (!dc->layers[i])
			continue;

		switch (dc->layers[i]->desc->type) {
		case ATMEL_HLCDC_BASE_LAYER:
			primary = FUNC1(dc->layers[i]);
			break;

		case ATMEL_HLCDC_CURSOR_LAYER:
			cursor = FUNC1(dc->layers[i]);
			break;

		default:
			break;
		}
	}

	ret = FUNC5(dev, &crtc->base, &primary->base,
					&cursor->base, &atmel_hlcdc_crtc_funcs,
					NULL);
	if (ret < 0)
		goto fail;

	crtc->id = FUNC4(&crtc->base);

	for (i = 0; i < ATMEL_HLCDC_MAX_LAYERS; i++) {
		struct atmel_hlcdc_plane *overlay;

		if (dc->layers[i] &&
		    dc->layers[i]->desc->type == ATMEL_HLCDC_OVERLAY_LAYER) {
			overlay = FUNC1(dc->layers[i]);
			overlay->base.possible_crtcs = 1 << crtc->id;
		}
	}

	FUNC3(&crtc->base, &lcdc_crtc_helper_funcs);
	FUNC6(&crtc->base);

	FUNC7(&crtc->base, ATMEL_HLCDC_CLUT_SIZE);
	FUNC2(&crtc->base, 0, false,
				   ATMEL_HLCDC_CLUT_SIZE);

	dc->crtc = &crtc->base;

	return 0;

fail:
	FUNC0(&crtc->base);
	return ret;
}