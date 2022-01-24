#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct talitos_private {int dummy; } ;
struct talitos_desc {scalar_t__ next_desc; TYPE_1__* ptr; } ;
struct talitos_edesc {struct talitos_desc desc; scalar_t__ dma_len; int /*<<< orphan*/  dma_link_tbl; scalar_t__ buf; } ;
struct talitos_ahash_req_ctx {scalar_t__ nbuf; scalar_t__ psrc; } ;
struct device {int dummy; } ;
struct ahash_request {int dummy; } ;
struct TYPE_3__ {scalar_t__ ptr; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_BIDIRECTIONAL ; 
 int /*<<< orphan*/  DMA_FROM_DEVICE ; 
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 scalar_t__ TALITOS_DESC_SIZE ; 
 struct talitos_ahash_req_ctx* FUNC0 (struct ahash_request*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 struct talitos_private* FUNC2 (struct device*) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (TYPE_1__*,int) ; 
 int FUNC5 (struct talitos_private*) ; 
 int /*<<< orphan*/  FUNC6 (struct device*,struct talitos_edesc*,scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct device*,TYPE_1__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC8(struct device *dev,
				       struct talitos_edesc *edesc,
				       struct ahash_request *areq)
{
	struct talitos_ahash_req_ctx *req_ctx = FUNC0(areq);
	struct talitos_private *priv = FUNC2(dev);
	bool is_sec1 = FUNC5(priv);
	struct talitos_desc *desc = &edesc->desc;
	struct talitos_desc *desc2 = (struct talitos_desc *)
				     (edesc->buf + edesc->dma_len);

	FUNC7(dev, &edesc->desc.ptr[5], DMA_FROM_DEVICE);
	if (desc->next_desc &&
	    desc->ptr[5].ptr != desc2->ptr[5].ptr)
		FUNC7(dev, &desc2->ptr[5], DMA_FROM_DEVICE);

	if (req_ctx->psrc)
		FUNC6(dev, edesc, req_ctx->psrc, NULL, 0, 0);

	/* When using hashctx-in, must unmap it. */
	if (FUNC4(&edesc->desc.ptr[1], is_sec1))
		FUNC7(dev, &edesc->desc.ptr[1],
					 DMA_TO_DEVICE);
	else if (desc->next_desc)
		FUNC7(dev, &desc2->ptr[1],
					 DMA_TO_DEVICE);

	if (is_sec1 && req_ctx->nbuf)
		FUNC7(dev, &desc->ptr[3],
					 DMA_TO_DEVICE);

	if (edesc->dma_len)
		FUNC3(dev, edesc->dma_link_tbl, edesc->dma_len,
				 DMA_BIDIRECTIONAL);

	if (edesc->desc.next_desc)
		FUNC3(dev, FUNC1(edesc->desc.next_desc),
				 TALITOS_DESC_SIZE, DMA_BIDIRECTIONAL);
}