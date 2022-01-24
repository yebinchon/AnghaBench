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
struct dma_device {int /*<<< orphan*/  channels; } ;
struct ioatdma_device {int /*<<< orphan*/  completion_pool; struct dma_device dma_dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct dma_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ioatdma_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct ioatdma_device*) ; 

__attribute__((used)) static void FUNC5(struct ioatdma_device *ioat_dma)
{
	struct dma_device *dma = &ioat_dma->dma_dev;

	FUNC3(ioat_dma);

	FUNC4(ioat_dma);

	FUNC1(dma);

	FUNC2(ioat_dma->completion_pool);

	FUNC0(&dma->channels);
}