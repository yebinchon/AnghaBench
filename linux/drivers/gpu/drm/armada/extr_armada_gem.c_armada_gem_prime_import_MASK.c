#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct drm_gem_object {struct dma_buf_attachment* import_attach; struct drm_device* dev; } ;
struct drm_device {int /*<<< orphan*/  dev; } ;
struct dma_buf_attachment {int dummy; } ;
struct dma_buf {int /*<<< orphan*/  size; struct drm_gem_object* priv; int /*<<< orphan*/ * ops; } ;
struct armada_gem_object {struct drm_gem_object obj; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMEM ; 
 struct drm_gem_object* FUNC0 (struct dma_buf_attachment*) ; 
 struct drm_gem_object* FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct dma_buf_attachment*) ; 
 struct armada_gem_object* FUNC3 (struct drm_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  armada_gem_prime_dmabuf_ops ; 
 struct dma_buf_attachment* FUNC4 (struct dma_buf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct dma_buf*,struct dma_buf_attachment*) ; 
 int /*<<< orphan*/  FUNC6 (struct drm_gem_object*) ; 
 int /*<<< orphan*/  FUNC7 (struct dma_buf*) ; 

struct drm_gem_object *
FUNC8(struct drm_device *dev, struct dma_buf *buf)
{
	struct dma_buf_attachment *attach;
	struct armada_gem_object *dobj;

	if (buf->ops == &armada_gem_prime_dmabuf_ops) {
		struct drm_gem_object *obj = buf->priv;
		if (obj->dev == dev) {
			/*
			 * Importing our own dmabuf(s) increases the
			 * refcount on the gem object itself.
			 */
			FUNC6(obj);
			return obj;
		}
	}

	attach = FUNC4(buf, dev->dev);
	if (FUNC2(attach))
		return FUNC0(attach);

	dobj = FUNC3(dev, buf->size);
	if (!dobj) {
		FUNC5(buf, attach);
		return FUNC1(-ENOMEM);
	}

	dobj->obj.import_attach = attach;
	FUNC7(buf);

	/*
	 * Don't call dma_buf_map_attachment() here - it maps the
	 * scatterlist immediately for DMA, and this is not always
	 * an appropriate thing to do.
	 */
	return &dobj->obj;
}