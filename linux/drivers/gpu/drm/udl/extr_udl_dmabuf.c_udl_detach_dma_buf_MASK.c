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
struct sg_table {int /*<<< orphan*/  nents; int /*<<< orphan*/  sgl; } ;
struct udl_drm_dmabuf_attachment {scalar_t__ dir; struct sg_table sgt; } ;
struct dma_buf_attachment {struct udl_drm_dmabuf_attachment* priv; int /*<<< orphan*/  dev; TYPE_1__* dmabuf; } ;
struct dma_buf {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  size; } ;

/* Variables and functions */
 scalar_t__ DMA_NONE ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct udl_drm_dmabuf_attachment*) ; 
 int /*<<< orphan*/  FUNC4 (struct sg_table*) ; 

__attribute__((used)) static void FUNC5(struct dma_buf *dmabuf,
			       struct dma_buf_attachment *attach)
{
	struct udl_drm_dmabuf_attachment *udl_attach = attach->priv;
	struct sg_table *sgt;

	if (!udl_attach)
		return;

	FUNC0("[DEV:%s] size:%zd\n", FUNC1(attach->dev),
			attach->dmabuf->size);

	sgt = &udl_attach->sgt;

	if (udl_attach->dir != DMA_NONE)
		FUNC2(attach->dev, sgt->sgl, sgt->nents,
				udl_attach->dir);

	FUNC4(sgt);
	FUNC3(udl_attach);
	attach->priv = NULL;
}