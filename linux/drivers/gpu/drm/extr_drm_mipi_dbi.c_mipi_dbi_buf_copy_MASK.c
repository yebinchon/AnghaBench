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
struct drm_rect {int dummy; } ;
struct drm_gem_object {struct dma_buf_attachment* import_attach; } ;
struct drm_gem_cma_object {void* vaddr; } ;
struct drm_framebuffer {TYPE_2__* format; TYPE_1__* dev; } ;
struct drm_format_name_buf {int dummy; } ;
struct dma_buf_attachment {int /*<<< orphan*/  dmabuf; } ;
struct TYPE_4__ {int format; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_FROM_DEVICE ; 
#define  DRM_FORMAT_RGB565 129 
#define  DRM_FORMAT_XRGB8888 128 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (void*,void*,struct drm_framebuffer*,struct drm_rect*) ; 
 int /*<<< orphan*/  FUNC4 (void*,void*,struct drm_framebuffer*,struct drm_rect*) ; 
 int /*<<< orphan*/  FUNC5 (void*,void*,struct drm_framebuffer*,struct drm_rect*,int) ; 
 struct drm_gem_object* FUNC6 (struct drm_framebuffer*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int,struct drm_format_name_buf*) ; 
 struct drm_gem_cma_object* FUNC8 (struct drm_gem_object*) ; 

int FUNC9(void *dst, struct drm_framebuffer *fb,
		      struct drm_rect *clip, bool swap)
{
	struct drm_gem_object *gem = FUNC6(fb, 0);
	struct drm_gem_cma_object *cma_obj = FUNC8(gem);
	struct dma_buf_attachment *import_attach = gem->import_attach;
	struct drm_format_name_buf format_name;
	void *src = cma_obj->vaddr;
	int ret = 0;

	if (import_attach) {
		ret = FUNC1(import_attach->dmabuf,
					       DMA_FROM_DEVICE);
		if (ret)
			return ret;
	}

	switch (fb->format->format) {
	case DRM_FORMAT_RGB565:
		if (swap)
			FUNC4(dst, src, fb, clip);
		else
			FUNC3(dst, src, fb, clip);
		break;
	case DRM_FORMAT_XRGB8888:
		FUNC5(dst, src, fb, clip, swap);
		break;
	default:
		FUNC0(fb->dev->dev, "Format is not supported: %s\n",
			     FUNC7(fb->format->format,
						 &format_name));
		return -EINVAL;
	}

	if (import_attach)
		ret = FUNC2(import_attach->dmabuf,
					     DMA_FROM_DEVICE);
	return ret;
}