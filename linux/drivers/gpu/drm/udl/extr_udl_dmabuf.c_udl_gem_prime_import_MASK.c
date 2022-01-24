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
struct drm_gem_object {struct sg_table* import_attach; } ;
struct udl_gem_object {struct drm_gem_object base; int /*<<< orphan*/  flags; } ;
struct sg_table {int dummy; } ;
struct drm_device {int /*<<< orphan*/  dev; } ;
typedef  struct sg_table dma_buf_attachment ;
struct dma_buf {int /*<<< orphan*/  size; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_BIDIRECTIONAL ; 
 struct drm_gem_object* FUNC0 (struct sg_table*) ; 
 struct drm_gem_object* FUNC1 (int) ; 
 scalar_t__ FUNC2 (struct sg_table*) ; 
 int FUNC3 (struct sg_table*) ; 
 int /*<<< orphan*/  UDL_BO_WC ; 
 struct sg_table* FUNC4 (struct dma_buf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct dma_buf*,struct sg_table*) ; 
 struct sg_table* FUNC6 (struct sg_table*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct dma_buf*) ; 
 int /*<<< orphan*/  FUNC8 (struct sg_table*,struct sg_table*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct dma_buf*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int FUNC12 (struct drm_device*,int /*<<< orphan*/ ,struct sg_table*,struct udl_gem_object**) ; 

struct drm_gem_object *FUNC13(struct drm_device *dev,
				struct dma_buf *dma_buf)
{
	struct dma_buf_attachment *attach;
	struct sg_table *sg;
	struct udl_gem_object *uobj;
	int ret;

	/* need to attach */
	FUNC9(dev->dev);
	attach = FUNC4(dma_buf, dev->dev);
	if (FUNC2(attach)) {
		FUNC11(dev->dev);
		return FUNC0(attach);
	}

	FUNC10(dma_buf);

	sg = FUNC6(attach, DMA_BIDIRECTIONAL);
	if (FUNC2(sg)) {
		ret = FUNC3(sg);
		goto fail_detach;
	}

	ret = FUNC12(dev, dma_buf->size, sg, &uobj);
	if (ret)
		goto fail_unmap;

	uobj->base.import_attach = attach;
	uobj->flags = UDL_BO_WC;

	return &uobj->base;

fail_unmap:
	FUNC8(attach, sg, DMA_BIDIRECTIONAL);
fail_detach:
	FUNC5(dma_buf, attach);
	FUNC7(dma_buf);
	FUNC11(dev->dev);
	return FUNC1(ret);
}