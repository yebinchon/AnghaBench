#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct scatterlist {int dummy; } ;
struct TYPE_4__ {int nents; struct scatterlist* sg; void* sg_len; scalar_t__ remainder; } ;
struct atmel_aes_dev {size_t total; size_t buflen; TYPE_2__ src; int /*<<< orphan*/  dev; TYPE_2__ dst; int /*<<< orphan*/  buf; struct scatterlist aligned_sg; TYPE_1__* ctx; struct scatterlist* real_dst; } ;
struct TYPE_3__ {int /*<<< orphan*/  block_size; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_BIDIRECTIONAL ; 
 int /*<<< orphan*/  DMA_FROM_DEVICE ; 
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 int EFAULT ; 
 int ENOMEM ; 
 int FUNC0 (struct atmel_aes_dev*,struct scatterlist*,size_t,TYPE_2__*) ; 
 size_t FUNC1 (size_t,int /*<<< orphan*/ ) ; 
 void* FUNC2 (int /*<<< orphan*/ ,struct scatterlist*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct scatterlist*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct scatterlist*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC5 (struct scatterlist*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct scatterlist*) ; 
 int /*<<< orphan*/  FUNC7 (struct scatterlist*,int /*<<< orphan*/ ,size_t) ; 

__attribute__((used)) static int FUNC8(struct atmel_aes_dev *dd,
			 struct scatterlist *src,
			 struct scatterlist *dst,
			 size_t len)
{
	bool src_aligned, dst_aligned;
	size_t padlen;

	dd->total = len;
	dd->src.sg = src;
	dd->dst.sg = dst;
	dd->real_dst = dst;

	src_aligned = FUNC0(dd, src, len, &dd->src);
	if (src == dst)
		dst_aligned = src_aligned;
	else
		dst_aligned = FUNC0(dd, dst, len, &dd->dst);
	if (!src_aligned || !dst_aligned) {
		padlen = FUNC1(len, dd->ctx->block_size);

		if (dd->buflen < len + padlen)
			return -ENOMEM;

		if (!src_aligned) {
			FUNC4(src, FUNC6(src), dd->buf, len);
			dd->src.sg = &dd->aligned_sg;
			dd->src.nents = 1;
			dd->src.remainder = 0;
		}

		if (!dst_aligned) {
			dd->dst.sg = &dd->aligned_sg;
			dd->dst.nents = 1;
			dd->dst.remainder = 0;
		}

		FUNC5(&dd->aligned_sg, 1);
		FUNC7(&dd->aligned_sg, dd->buf, len + padlen);
	}

	if (dd->src.sg == dd->dst.sg) {
		dd->src.sg_len = FUNC2(dd->dev, dd->src.sg, dd->src.nents,
					    DMA_BIDIRECTIONAL);
		dd->dst.sg_len = dd->src.sg_len;
		if (!dd->src.sg_len)
			return -EFAULT;
	} else {
		dd->src.sg_len = FUNC2(dd->dev, dd->src.sg, dd->src.nents,
					    DMA_TO_DEVICE);
		if (!dd->src.sg_len)
			return -EFAULT;

		dd->dst.sg_len = FUNC2(dd->dev, dd->dst.sg, dd->dst.nents,
					    DMA_FROM_DEVICE);
		if (!dd->dst.sg_len) {
			FUNC3(dd->dev, dd->src.sg, dd->src.nents,
				     DMA_TO_DEVICE);
			return -EFAULT;
		}
	}

	return 0;
}