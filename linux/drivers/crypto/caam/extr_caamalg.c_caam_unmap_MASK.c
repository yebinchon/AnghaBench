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
struct scatterlist {int dummy; } ;
struct device {int dummy; } ;
typedef  scalar_t__ dma_addr_t ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_BIDIRECTIONAL ; 
 int /*<<< orphan*/  DMA_FROM_DEVICE ; 
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 int /*<<< orphan*/  FUNC0 (struct device*,struct scatterlist*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,scalar_t__,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct device *dev, struct scatterlist *src,
		       struct scatterlist *dst, int src_nents,
		       int dst_nents,
		       dma_addr_t iv_dma, int ivsize, dma_addr_t sec4_sg_dma,
		       int sec4_sg_bytes)
{
	if (dst != src) {
		if (src_nents)
			FUNC0(dev, src, src_nents, DMA_TO_DEVICE);
		if (dst_nents)
			FUNC0(dev, dst, dst_nents, DMA_FROM_DEVICE);
	} else {
		FUNC0(dev, src, src_nents, DMA_BIDIRECTIONAL);
	}

	if (iv_dma)
		FUNC1(dev, iv_dma, ivsize, DMA_BIDIRECTIONAL);
	if (sec4_sg_bytes)
		FUNC1(dev, sec4_sg_dma, sec4_sg_bytes,
				 DMA_TO_DEVICE);
}