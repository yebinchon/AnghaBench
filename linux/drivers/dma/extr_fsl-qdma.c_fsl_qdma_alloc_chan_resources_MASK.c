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
struct fsl_qdma_queue {void* comp_pool; void* desc_pool; int /*<<< orphan*/  comp_free; } ;
struct fsl_qdma_engine {int desc_allocated; } ;
struct fsl_qdma_chan {struct fsl_qdma_queue* queue; struct fsl_qdma_engine* qdma; } ;
struct dma_chan {TYPE_1__* device; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FSL_QDMA_COMMAND_BUFFER_SIZE ; 
 int /*<<< orphan*/  FSL_QDMA_DESCRIPTOR_BUFFER_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 void* FUNC2 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (void*) ; 
 int FUNC4 (struct fsl_qdma_queue*) ; 
 struct fsl_qdma_chan* FUNC5 (struct dma_chan*) ; 

__attribute__((used)) static int FUNC6(struct dma_chan *chan)
{
	int ret;
	struct fsl_qdma_chan *fsl_chan = FUNC5(chan);
	struct fsl_qdma_engine *fsl_qdma = fsl_chan->qdma;
	struct fsl_qdma_queue *fsl_queue = fsl_chan->queue;

	if (fsl_queue->comp_pool && fsl_queue->desc_pool)
		return fsl_qdma->desc_allocated;

	FUNC0(&fsl_queue->comp_free);

	/*
	 * The dma pool for queue command buffer
	 */
	fsl_queue->comp_pool =
	FUNC2("comp_pool",
			chan->device->dev,
			FSL_QDMA_COMMAND_BUFFER_SIZE,
			64, 0);
	if (!fsl_queue->comp_pool)
		return -ENOMEM;

	/*
	 * The dma pool for Descriptor(SD/DD) buffer
	 */
	fsl_queue->desc_pool =
	FUNC2("desc_pool",
			chan->device->dev,
			FSL_QDMA_DESCRIPTOR_BUFFER_SIZE,
			32, 0);
	if (!fsl_queue->desc_pool)
		goto err_desc_pool;

	ret = FUNC4(fsl_queue);
	if (ret) {
		FUNC1(chan->device->dev,
			"failed to alloc dma buffer for S/G descriptor\n");
		goto err_mem;
	}

	fsl_qdma->desc_allocated++;
	return fsl_qdma->desc_allocated;

err_mem:
	FUNC3(fsl_queue->desc_pool);
err_desc_pool:
	FUNC3(fsl_queue->comp_pool);
	return -ENOMEM;
}