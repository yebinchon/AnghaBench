#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct scatterlist {int dummy; } ;
struct TYPE_5__ {int /*<<< orphan*/  size; } ;
struct TYPE_6__ {int sg_dma_cnt; TYPE_1__ chunk_list; struct scatterlist* sgl; int /*<<< orphan*/  pbl_buf_size_in_pages; } ;
struct TYPE_7__ {TYPE_2__ indirect; } ;
struct pbl_context {TYPE_3__ phys; int /*<<< orphan*/  pbl_buf_size_in_bytes; int /*<<< orphan*/  pbl_buf; } ;
struct efa_dev {TYPE_4__* pdev; int /*<<< orphan*/  ibdev; } ;
struct TYPE_8__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 scalar_t__ EFA_CHUNK_PAYLOAD_SIZE ; 
 int EINVAL ; 
 int ENOMEM ; 
 scalar_t__ PAGE_SIZE ; 
 int FUNC2 (int /*<<< orphan*/ *,struct scatterlist*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct scatterlist*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct scatterlist* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,int,...) ; 
 int /*<<< orphan*/  FUNC6 (struct scatterlist*) ; 
 int FUNC7 (struct efa_dev*,struct pbl_context*) ; 

__attribute__((used)) static int FUNC8(struct efa_dev *dev, struct pbl_context *pbl)
{
	u32 size_in_pages = FUNC1(pbl->pbl_buf_size_in_bytes, PAGE_SIZE);
	struct scatterlist *sgl;
	int sg_dma_cnt, err;

	FUNC0(EFA_CHUNK_PAYLOAD_SIZE > PAGE_SIZE);
	sgl = FUNC4(pbl->pbl_buf, size_in_pages);
	if (!sgl)
		return -ENOMEM;

	sg_dma_cnt = FUNC2(&dev->pdev->dev, sgl, size_in_pages, DMA_TO_DEVICE);
	if (!sg_dma_cnt) {
		err = -EINVAL;
		goto err_map;
	}

	pbl->phys.indirect.pbl_buf_size_in_pages = size_in_pages;
	pbl->phys.indirect.sgl = sgl;
	pbl->phys.indirect.sg_dma_cnt = sg_dma_cnt;
	err = FUNC7(dev, pbl);
	if (err) {
		FUNC5(&dev->ibdev,
			  "chunk_list creation failed[%d]\n", err);
		goto err_chunk;
	}

	FUNC5(&dev->ibdev,
		  "pbl indirect - size[%u], chunks[%u]\n",
		  pbl->pbl_buf_size_in_bytes,
		  pbl->phys.indirect.chunk_list.size);

	return 0;

err_chunk:
	FUNC3(&dev->pdev->dev, sgl, size_in_pages, DMA_TO_DEVICE);
err_map:
	FUNC6(sgl);
	return err;
}