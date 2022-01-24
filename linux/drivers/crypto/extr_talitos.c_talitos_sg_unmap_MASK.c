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
struct talitos_private {int dummy; } ;
struct talitos_edesc {int src_nents; int dst_nents; scalar_t__ buf; scalar_t__ dma_link_tbl; } ;
struct scatterlist {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_BIDIRECTIONAL ; 
 int /*<<< orphan*/  DMA_FROM_DEVICE ; 
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 struct talitos_private* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,scalar_t__,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,struct scatterlist*,unsigned int,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct talitos_private*) ; 
 int /*<<< orphan*/  FUNC4 (struct scatterlist*,unsigned int,scalar_t__,unsigned int,unsigned int) ; 

__attribute__((used)) static void FUNC5(struct device *dev,
			     struct talitos_edesc *edesc,
			     struct scatterlist *src,
			     struct scatterlist *dst,
			     unsigned int len, unsigned int offset)
{
	struct talitos_private *priv = FUNC0(dev);
	bool is_sec1 = FUNC3(priv);
	unsigned int src_nents = edesc->src_nents ? : 1;
	unsigned int dst_nents = edesc->dst_nents ? : 1;

	if (is_sec1 && dst && dst_nents > 1) {
		FUNC1(dev, edesc->dma_link_tbl + offset,
					   len, DMA_FROM_DEVICE);
		FUNC4(dst, dst_nents, edesc->buf + offset, len,
				     offset);
	}
	if (src != dst) {
		if (src_nents == 1 || !is_sec1)
			FUNC2(dev, src, src_nents, DMA_TO_DEVICE);

		if (dst && (dst_nents == 1 || !is_sec1))
			FUNC2(dev, dst, dst_nents, DMA_FROM_DEVICE);
	} else if (src_nents == 1 || !is_sec1) {
		FUNC2(dev, src, src_nents, DMA_BIDIRECTIONAL);
	}
}