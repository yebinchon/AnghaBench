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
struct sg_table {int dummy; } ;
struct drm_gem_object {struct dma_buf_attachment* import_attach; } ;
struct dma_buf_attachment {struct dma_buf* dmabuf; } ;
struct dma_buf {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_BIDIRECTIONAL ; 
 int /*<<< orphan*/  FUNC0 (struct dma_buf*,struct dma_buf_attachment*) ; 
 int /*<<< orphan*/  FUNC1 (struct dma_buf*) ; 
 int /*<<< orphan*/  FUNC2 (struct dma_buf_attachment*,struct sg_table*,int /*<<< orphan*/ ) ; 

void FUNC3(struct drm_gem_object *obj, struct sg_table *sg)
{
	struct dma_buf_attachment *attach;
	struct dma_buf *dma_buf;
	attach = obj->import_attach;
	if (sg)
		FUNC2(attach, sg, DMA_BIDIRECTIONAL);
	dma_buf = attach->dmabuf;
	FUNC0(attach->dmabuf, attach);
	/* remove the reference */
	FUNC1(dma_buf);
}