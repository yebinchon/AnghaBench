#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int size; struct drm_device* dev; } ;
struct udl_gem_object {TYPE_3__* sg; int /*<<< orphan*/  pages; TYPE_2__ base; } ;
struct sg_table {unsigned int orig_nents; struct scatterlist* sgl; } ;
struct udl_drm_dmabuf_attachment {int dir; int is_mapped; struct sg_table sgt; } ;
struct udl_device {int /*<<< orphan*/  gem_lock; } ;
struct scatterlist {int /*<<< orphan*/  offset; int /*<<< orphan*/  length; } ;
struct drm_device {struct udl_device* dev_private; } ;
struct dma_buf_attachment {struct udl_drm_dmabuf_attachment* priv; int /*<<< orphan*/  dev; TYPE_1__* dmabuf; } ;
typedef  enum dma_data_direction { ____Placeholder_dma_data_direction } dma_data_direction ;
struct TYPE_8__ {struct scatterlist* sgl; int /*<<< orphan*/  orig_nents; } ;
struct TYPE_6__ {int /*<<< orphan*/  size; int /*<<< orphan*/  priv; } ;

/* Variables and functions */
 int DMA_NONE ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int EIO ; 
 int ENOMEM ; 
 struct sg_table* FUNC2 (TYPE_3__*) ; 
 struct sg_table* FUNC3 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC4 (TYPE_3__*) ; 
 int PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ,struct scatterlist*,unsigned int,int) ; 
 TYPE_3__* FUNC7 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int FUNC10 (struct sg_table*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct sg_table*) ; 
 struct scatterlist* FUNC12 (struct scatterlist*) ; 
 int /*<<< orphan*/  FUNC13 (struct scatterlist*) ; 
 int /*<<< orphan*/  FUNC14 (struct scatterlist*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct udl_gem_object* FUNC15 (int /*<<< orphan*/ ) ; 
 int FUNC16 (struct udl_gem_object*) ; 

__attribute__((used)) static struct sg_table *FUNC17(struct dma_buf_attachment *attach,
					enum dma_data_direction dir)
{
	struct udl_drm_dmabuf_attachment *udl_attach = attach->priv;
	struct udl_gem_object *obj = FUNC15(attach->dmabuf->priv);
	struct drm_device *dev = obj->base.dev;
	struct udl_device *udl = dev->dev_private;
	struct scatterlist *rd, *wr;
	struct sg_table *sgt = NULL;
	unsigned int i;
	int page_count;
	int nents, ret;

	FUNC0("[DEV:%s] size:%zd dir=%d\n", FUNC5(attach->dev),
			attach->dmabuf->size, dir);

	/* just return current sgt if already requested. */
	if (udl_attach->dir == dir && udl_attach->is_mapped)
		return &udl_attach->sgt;

	if (!obj->pages) {
		ret = FUNC16(obj);
		if (ret) {
			FUNC1("failed to map pages.\n");
			return FUNC3(ret);
		}
	}

	page_count = obj->base.size / PAGE_SIZE;
	obj->sg = FUNC7(obj->pages, page_count);
	if (FUNC4(obj->sg)) {
		FUNC1("failed to allocate sgt.\n");
		return FUNC2(obj->sg);
	}

	sgt = &udl_attach->sgt;

	ret = FUNC10(sgt, obj->sg->orig_nents, GFP_KERNEL);
	if (ret) {
		FUNC1("failed to alloc sgt.\n");
		return FUNC3(-ENOMEM);
	}

	FUNC8(&udl->gem_lock);

	rd = obj->sg->sgl;
	wr = sgt->sgl;
	for (i = 0; i < sgt->orig_nents; ++i) {
		FUNC14(wr, FUNC13(rd), rd->length, rd->offset);
		rd = FUNC12(rd);
		wr = FUNC12(wr);
	}

	if (dir != DMA_NONE) {
		nents = FUNC6(attach->dev, sgt->sgl, sgt->orig_nents, dir);
		if (!nents) {
			FUNC1("failed to map sgl with iommu.\n");
			FUNC11(sgt);
			sgt = FUNC3(-EIO);
			goto err_unlock;
		}
	}

	udl_attach->is_mapped = true;
	udl_attach->dir = dir;
	attach->priv = udl_attach;

err_unlock:
	FUNC9(&udl->gem_lock);
	return sgt;
}