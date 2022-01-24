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
struct sg_table {int /*<<< orphan*/  orig_nents; int /*<<< orphan*/  sgl; } ;
struct vb2_dma_sg_attachment {scalar_t__ dma_dir; struct sg_table sgt; } ;
struct dma_buf_attachment {struct vb2_dma_sg_attachment* priv; int /*<<< orphan*/  dev; } ;
struct dma_buf {int dummy; } ;

/* Variables and functions */
 scalar_t__ DMA_NONE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct vb2_dma_sg_attachment*) ; 
 int /*<<< orphan*/  FUNC2 (struct sg_table*) ; 

__attribute__((used)) static void FUNC3(struct dma_buf *dbuf,
	struct dma_buf_attachment *db_attach)
{
	struct vb2_dma_sg_attachment *attach = db_attach->priv;
	struct sg_table *sgt;

	if (!attach)
		return;

	sgt = &attach->sgt;

	/* release the scatterlist cache */
	if (attach->dma_dir != DMA_NONE)
		FUNC0(db_attach->dev, sgt->sgl, sgt->orig_nents,
			attach->dma_dir);
	FUNC2(sgt);
	FUNC1(attach);
	db_attach->priv = NULL;
}