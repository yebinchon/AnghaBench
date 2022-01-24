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
struct drm_rect {int dummy; } ;
struct TYPE_2__ {struct dma_buf_attachment* import_attach; } ;
struct drm_gem_cma_object {void* vaddr; TYPE_1__ base; } ;
struct drm_framebuffer {int dummy; } ;
struct dma_buf_attachment {int /*<<< orphan*/  dmabuf; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_FROM_DEVICE ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct drm_gem_cma_object* FUNC2 (struct drm_framebuffer*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (void*,void*,struct drm_framebuffer*,struct drm_rect*) ; 

__attribute__((used)) static int FUNC4(void *dst, struct drm_framebuffer *fb,
			   struct drm_rect *clip)
{
	struct drm_gem_cma_object *cma_obj = FUNC2(fb, 0);
	struct dma_buf_attachment *import_attach = cma_obj->base.import_attach;
	void *src = cma_obj->vaddr;
	int ret = 0;

	if (import_attach) {
		ret = FUNC0(import_attach->dmabuf,
					       DMA_FROM_DEVICE);
		if (ret)
			return ret;
	}

	FUNC3(dst, src, fb, clip);

	if (import_attach)
		ret = FUNC1(import_attach->dmabuf,
					     DMA_FROM_DEVICE);

	return ret;
}