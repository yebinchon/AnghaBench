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
struct drm_gem_object {int /*<<< orphan*/  resv; struct dma_buf_attachment* import_attach; struct drm_device* dev; } ;
struct drm_i915_gem_object {struct drm_gem_object base; scalar_t__ write_domain; int /*<<< orphan*/  read_domains; } ;
struct drm_device {int /*<<< orphan*/  dev; } ;
struct dma_buf_attachment {int dummy; } ;
struct dma_buf {int /*<<< orphan*/  resv; int /*<<< orphan*/  size; int /*<<< orphan*/ * ops; } ;
struct TYPE_2__ {struct drm_gem_object base; } ;

/* Variables and functions */
 int ENOMEM ; 
 struct drm_gem_object* FUNC0 (struct dma_buf_attachment*) ; 
 struct drm_gem_object* FUNC1 (int) ; 
 int /*<<< orphan*/  I915_GEM_DOMAIN_GTT ; 
 scalar_t__ FUNC2 (struct dma_buf_attachment*) ; 
 struct dma_buf_attachment* FUNC3 (struct dma_buf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct dma_buf*,struct dma_buf_attachment*) ; 
 int /*<<< orphan*/  FUNC5 (struct dma_buf*) ; 
 struct drm_i915_gem_object* FUNC6 (struct dma_buf*) ; 
 int /*<<< orphan*/  FUNC7 (struct drm_device*,struct drm_gem_object*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct dma_buf*) ; 
 int /*<<< orphan*/  i915_dmabuf_ops ; 
 struct drm_i915_gem_object* FUNC9 () ; 
 int /*<<< orphan*/  i915_gem_object_dmabuf_ops ; 
 TYPE_1__* FUNC10 (struct drm_i915_gem_object*) ; 
 int /*<<< orphan*/  FUNC11 (struct drm_i915_gem_object*,int /*<<< orphan*/ *) ; 

struct drm_gem_object *FUNC12(struct drm_device *dev,
					     struct dma_buf *dma_buf)
{
	struct dma_buf_attachment *attach;
	struct drm_i915_gem_object *obj;
	int ret;

	/* is this one of own objects? */
	if (dma_buf->ops == &i915_dmabuf_ops) {
		obj = FUNC6(dma_buf);
		/* is it from our device? */
		if (obj->base.dev == dev) {
			/*
			 * Importing dmabuf exported from out own gem increases
			 * refcount on gem itself instead of f_count of dmabuf.
			 */
			return &FUNC10(obj)->base;
		}
	}

	/* need to attach */
	attach = FUNC3(dma_buf, dev->dev);
	if (FUNC2(attach))
		return FUNC0(attach);

	FUNC8(dma_buf);

	obj = FUNC9();
	if (obj == NULL) {
		ret = -ENOMEM;
		goto fail_detach;
	}

	FUNC7(dev, &obj->base, dma_buf->size);
	FUNC11(obj, &i915_gem_object_dmabuf_ops);
	obj->base.import_attach = attach;
	obj->base.resv = dma_buf->resv;

	/* We use GTT as shorthand for a coherent domain, one that is
	 * neither in the GPU cache nor in the CPU cache, where all
	 * writes are immediately visible in memory. (That's not strictly
	 * true, but it's close! There are internal buffers such as the
	 * write-combined buffer or a delay through the chipset for GTT
	 * writes that do require us to treat GTT as a separate cache domain.)
	 */
	obj->read_domains = I915_GEM_DOMAIN_GTT;
	obj->write_domain = 0;

	return &obj->base;

fail_detach:
	FUNC4(dma_buf, attach);
	FUNC5(dma_buf);

	return FUNC1(ret);
}