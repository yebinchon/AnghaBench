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
struct vb2_dc_buf {int /*<<< orphan*/  vec; int /*<<< orphan*/  dma_dir; int /*<<< orphan*/  size; int /*<<< orphan*/  dma_addr; int /*<<< orphan*/  dev; int /*<<< orphan*/  orig_nents; int /*<<< orphan*/  sgl; struct vb2_dc_buf* dma_sgt; } ;
struct sg_table {int /*<<< orphan*/  vec; int /*<<< orphan*/  dma_dir; int /*<<< orphan*/  size; int /*<<< orphan*/  dma_addr; int /*<<< orphan*/  dev; int /*<<< orphan*/  orig_nents; int /*<<< orphan*/  sgl; struct sg_table* dma_sgt; } ;
struct page {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DMA_ATTR_SKIP_CPU_SYNC ; 
 int /*<<< orphan*/  DMA_BIDIRECTIONAL ; 
 int /*<<< orphan*/  DMA_FROM_DEVICE ; 
 int /*<<< orphan*/  FUNC1 (struct page**) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 struct page** FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct vb2_dc_buf*) ; 
 int /*<<< orphan*/  FUNC7 (struct page*) ; 
 int /*<<< orphan*/  FUNC8 (struct vb2_dc_buf*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC10(void *buf_priv)
{
	struct vb2_dc_buf *buf = buf_priv;
	struct sg_table *sgt = buf->dma_sgt;
	int i;
	struct page **pages;

	if (sgt) {
		/*
		 * No need to sync to CPU, it's already synced to the CPU
		 * since the finish() memop will have been called before this.
		 */
		FUNC3(buf->dev, sgt->sgl, sgt->orig_nents,
				   buf->dma_dir, DMA_ATTR_SKIP_CPU_SYNC);
		pages = FUNC5(buf->vec);
		/* sgt should exist only if vector contains pages... */
		FUNC0(FUNC1(pages));
		if (buf->dma_dir == DMA_FROM_DEVICE ||
		    buf->dma_dir == DMA_BIDIRECTIONAL)
			for (i = 0; i < FUNC4(buf->vec); i++)
				FUNC7(pages[i]);
		FUNC8(sgt);
		FUNC6(sgt);
	} else {
		FUNC2(buf->dev, buf->dma_addr, buf->size,
				   buf->dma_dir, 0);
	}
	FUNC9(buf->vec);
	FUNC6(buf);
}