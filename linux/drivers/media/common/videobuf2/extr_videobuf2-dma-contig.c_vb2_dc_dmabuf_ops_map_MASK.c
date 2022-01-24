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
struct sg_table {int /*<<< orphan*/  nents; int /*<<< orphan*/  orig_nents; int /*<<< orphan*/  sgl; } ;
struct vb2_dc_attachment {int dma_dir; struct sg_table sgt; } ;
struct mutex {int dummy; } ;
struct dma_buf_attachment {int /*<<< orphan*/  dev; TYPE_1__* dmabuf; struct vb2_dc_attachment* priv; } ;
typedef  enum dma_data_direction { ____Placeholder_dma_data_direction } dma_data_direction ;
struct TYPE_2__ {struct mutex lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_ATTR_SKIP_CPU_SYNC ; 
 scalar_t__ DMA_NONE ; 
 int /*<<< orphan*/  EIO ; 
 struct sg_table* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct mutex*) ; 
 int /*<<< orphan*/  FUNC4 (struct mutex*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 

__attribute__((used)) static struct sg_table *FUNC6(
	struct dma_buf_attachment *db_attach, enum dma_data_direction dma_dir)
{
	struct vb2_dc_attachment *attach = db_attach->priv;
	/* stealing dmabuf mutex to serialize map/unmap operations */
	struct mutex *lock = &db_attach->dmabuf->lock;
	struct sg_table *sgt;

	FUNC3(lock);

	sgt = &attach->sgt;
	/* return previously mapped sg table */
	if (attach->dma_dir == dma_dir) {
		FUNC4(lock);
		return sgt;
	}

	/* release any previous cache */
	if (attach->dma_dir != DMA_NONE) {
		FUNC2(db_attach->dev, sgt->sgl, sgt->orig_nents,
				   attach->dma_dir, DMA_ATTR_SKIP_CPU_SYNC);
		attach->dma_dir = DMA_NONE;
	}

	/*
	 * mapping to the client with new direction, no cache sync
	 * required see comment in vb2_dc_dmabuf_ops_detach()
	 */
	sgt->nents = FUNC1(db_attach->dev, sgt->sgl, sgt->orig_nents,
				      dma_dir, DMA_ATTR_SKIP_CPU_SYNC);
	if (!sgt->nents) {
		FUNC5("failed to map scatterlist\n");
		FUNC4(lock);
		return FUNC0(-EIO);
	}

	attach->dma_dir = dma_dir;

	FUNC4(lock);

	return sgt;
}