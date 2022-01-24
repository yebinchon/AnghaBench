#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u8 ;
struct repaper_epd {int partial; int cleared; scalar_t__* current_frame; scalar_t__ pre_border_byte; int /*<<< orphan*/  factored_stage_time; int /*<<< orphan*/  enabled; } ;
struct drm_rect {int x2; int y2; scalar_t__ y1; scalar_t__ x1; } ;
struct TYPE_3__ {struct dma_buf_attachment* import_attach; } ;
struct drm_gem_cma_object {int /*<<< orphan*/  vaddr; TYPE_1__ base; } ;
struct TYPE_4__ {int /*<<< orphan*/  id; } ;
struct drm_framebuffer {int width; int height; TYPE_2__ base; int /*<<< orphan*/  dev; } ;
struct dma_buf_attachment {int /*<<< orphan*/  dmabuf; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_FROM_DEVICE ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  REPAPER_COMPENSATE ; 
 int /*<<< orphan*/  REPAPER_INVERSE ; 
 int /*<<< orphan*/  REPAPER_NORMAL ; 
 int /*<<< orphan*/  REPAPER_WHITE ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 struct drm_gem_cma_object* FUNC5 (struct drm_framebuffer*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__*,int /*<<< orphan*/ ,struct drm_framebuffer*,struct drm_rect*) ; 
 struct repaper_epd* FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__*) ; 
 scalar_t__* FUNC9 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__*,scalar_t__*,int) ; 
 int /*<<< orphan*/  FUNC11 (struct repaper_epd*,scalar_t__*,scalar_t__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct repaper_epd*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct repaper_epd*) ; 
 int /*<<< orphan*/  FUNC14 (scalar_t__*,int,int) ; 

__attribute__((used)) static int FUNC15(struct drm_framebuffer *fb)
{
	struct drm_gem_cma_object *cma_obj = FUNC5(fb, 0);
	struct dma_buf_attachment *import_attach = cma_obj->base.import_attach;
	struct repaper_epd *epd = FUNC7(fb->dev);
	struct drm_rect clip;
	int idx, ret = 0;
	u8 *buf = NULL;

	if (!epd->enabled)
		return 0;

	if (!FUNC3(fb->dev, &idx))
		return -ENODEV;

	/* repaper can't do partial updates */
	clip.x1 = 0;
	clip.x2 = fb->width;
	clip.y1 = 0;
	clip.y2 = fb->height;

	FUNC13(epd);

	FUNC0("Flushing [FB:%d] st=%ums\n", fb->base.id,
		  epd->factored_stage_time);

	buf = FUNC9(fb->width, fb->height, GFP_KERNEL);
	if (!buf) {
		ret = -ENOMEM;
		goto out_exit;
	}

	if (import_attach) {
		ret = FUNC1(import_attach->dmabuf,
					       DMA_FROM_DEVICE);
		if (ret)
			goto out_free;
	}

	FUNC6(buf, cma_obj->vaddr, fb, &clip);

	if (import_attach) {
		ret = FUNC2(import_attach->dmabuf,
					     DMA_FROM_DEVICE);
		if (ret)
			goto out_free;
	}

	FUNC14(buf, fb->width, fb->height);

	if (epd->partial) {
		FUNC11(epd, buf, epd->current_frame,
					  REPAPER_NORMAL);
	} else if (epd->cleared) {
		FUNC11(epd, epd->current_frame, NULL,
					  REPAPER_COMPENSATE);
		FUNC11(epd, epd->current_frame, NULL,
					  REPAPER_WHITE);
		FUNC11(epd, buf, NULL, REPAPER_INVERSE);
		FUNC11(epd, buf, NULL, REPAPER_NORMAL);

		epd->partial = true;
	} else {
		/* Clear display (anything -> white) */
		FUNC12(epd, 0xff, REPAPER_COMPENSATE);
		FUNC12(epd, 0xff, REPAPER_WHITE);
		FUNC12(epd, 0xaa, REPAPER_INVERSE);
		FUNC12(epd, 0xaa, REPAPER_NORMAL);

		/* Assuming a clear (white) screen output an image */
		FUNC12(epd, 0xaa, REPAPER_COMPENSATE);
		FUNC12(epd, 0xaa, REPAPER_WHITE);
		FUNC11(epd, buf, NULL, REPAPER_INVERSE);
		FUNC11(epd, buf, NULL, REPAPER_NORMAL);

		epd->cleared = true;
		epd->partial = true;
	}

	FUNC10(epd->current_frame, buf, fb->width * fb->height / 8);

	/*
	 * An extra frame write is needed if pixels are set in the bottom line,
	 * or else grey lines rises up from the pixels
	 */
	if (epd->pre_border_byte) {
		unsigned int x;

		for (x = 0; x < (fb->width / 8); x++)
			if (buf[x + (fb->width * (fb->height - 1) / 8)]) {
				FUNC11(epd, buf,
							  epd->current_frame,
							  REPAPER_NORMAL);
				break;
			}
	}

out_free:
	FUNC8(buf);
out_exit:
	FUNC4(idx);

	return ret;
}