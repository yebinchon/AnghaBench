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
struct sg_table {int /*<<< orphan*/  resv; struct sg_table* import_attach; struct drm_device* dev; } ;
struct drm_gem_object {int /*<<< orphan*/  resv; struct drm_gem_object* import_attach; struct drm_device* dev; } ;
struct drm_device {TYPE_1__* driver; } ;
struct dma_buf_attachment {int /*<<< orphan*/  resv; struct dma_buf_attachment* import_attach; struct drm_device* dev; } ;
struct dma_buf {int /*<<< orphan*/  resv; struct sg_table* priv; int /*<<< orphan*/ * ops; } ;
struct device {int dummy; } ;
struct TYPE_2__ {struct sg_table* (* gem_prime_import_sg_table ) (struct drm_device*,struct sg_table*,struct sg_table*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_BIDIRECTIONAL ; 
 int EINVAL ; 
 struct sg_table* FUNC0 (struct sg_table*) ; 
 struct sg_table* FUNC1 (int) ; 
 scalar_t__ FUNC2 (struct sg_table*) ; 
 int FUNC3 (struct sg_table*) ; 
 struct sg_table* FUNC4 (struct dma_buf*,struct device*) ; 
 int /*<<< orphan*/  FUNC5 (struct dma_buf*,struct sg_table*) ; 
 struct sg_table* FUNC6 (struct sg_table*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct dma_buf*) ; 
 int /*<<< orphan*/  FUNC8 (struct sg_table*,struct sg_table*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct sg_table*) ; 
 int /*<<< orphan*/  drm_gem_prime_dmabuf_ops ; 
 int /*<<< orphan*/  FUNC10 (struct dma_buf*) ; 
 struct sg_table* FUNC11 (struct drm_device*,struct sg_table*,struct sg_table*) ; 

struct drm_gem_object *FUNC12(struct drm_device *dev,
					    struct dma_buf *dma_buf,
					    struct device *attach_dev)
{
	struct dma_buf_attachment *attach;
	struct sg_table *sgt;
	struct drm_gem_object *obj;
	int ret;

	if (dma_buf->ops == &drm_gem_prime_dmabuf_ops) {
		obj = dma_buf->priv;
		if (obj->dev == dev) {
			/*
			 * Importing dmabuf exported from out own gem increases
			 * refcount on gem itself instead of f_count of dmabuf.
			 */
			FUNC9(obj);
			return obj;
		}
	}

	if (!dev->driver->gem_prime_import_sg_table)
		return FUNC1(-EINVAL);

	attach = FUNC4(dma_buf, attach_dev);
	if (FUNC2(attach))
		return FUNC0(attach);

	FUNC10(dma_buf);

	sgt = FUNC6(attach, DMA_BIDIRECTIONAL);
	if (FUNC2(sgt)) {
		ret = FUNC3(sgt);
		goto fail_detach;
	}

	obj = dev->driver->gem_prime_import_sg_table(dev, attach, sgt);
	if (FUNC2(obj)) {
		ret = FUNC3(obj);
		goto fail_unmap;
	}

	obj->import_attach = attach;
	obj->resv = dma_buf->resv;

	return obj;

fail_unmap:
	FUNC8(attach, sgt, DMA_BIDIRECTIONAL);
fail_detach:
	FUNC5(dma_buf, attach);
	FUNC7(dma_buf);

	return FUNC1(ret);
}