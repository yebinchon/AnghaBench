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
struct talitos_ptr {int dummy; } ;
struct TYPE_2__ {int hdr; struct talitos_ptr* ptr; } ;
struct talitos_edesc {int dst_nents; scalar_t__ dma_len; int /*<<< orphan*/  dma_link_tbl; TYPE_1__ desc; } ;
struct talitos_ctx {int /*<<< orphan*/  iv; } ;
struct device {int dummy; } ;
struct crypto_aead {int dummy; } ;
struct aead_request {unsigned int cryptlen; scalar_t__ assoclen; int /*<<< orphan*/  dst; int /*<<< orphan*/  src; } ;

/* Variables and functions */
 int DESC_HDR_TYPE_IPSEC_ESP ; 
 int /*<<< orphan*/  DMA_BIDIRECTIONAL ; 
 int /*<<< orphan*/  DMA_FROM_DEVICE ; 
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 unsigned int FUNC0 (struct crypto_aead*) ; 
 struct talitos_ctx* FUNC1 (struct crypto_aead*) ; 
 unsigned int FUNC2 (struct crypto_aead*) ; 
 struct crypto_aead* FUNC3 (struct aead_request*) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ,unsigned int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (struct device*,struct talitos_edesc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (struct device*,struct talitos_ptr*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC8(struct device *dev,
			    struct talitos_edesc *edesc,
			    struct aead_request *areq, bool encrypt)
{
	struct crypto_aead *aead = FUNC3(areq);
	struct talitos_ctx *ctx = FUNC1(aead);
	unsigned int ivsize = FUNC2(aead);
	unsigned int authsize = FUNC0(aead);
	unsigned int cryptlen = areq->cryptlen - (encrypt ? 0 : authsize);
	bool is_ipsec_esp = edesc->desc.hdr & DESC_HDR_TYPE_IPSEC_ESP;
	struct talitos_ptr *civ_ptr = &edesc->desc.ptr[is_ipsec_esp ? 2 : 3];

	if (is_ipsec_esp)
		FUNC7(dev, &edesc->desc.ptr[6],
					 DMA_FROM_DEVICE);
	FUNC7(dev, civ_ptr, DMA_TO_DEVICE);

	FUNC6(dev, edesc, areq->src, areq->dst,
			 cryptlen + authsize, areq->assoclen);

	if (edesc->dma_len)
		FUNC4(dev, edesc->dma_link_tbl, edesc->dma_len,
				 DMA_BIDIRECTIONAL);

	if (!is_ipsec_esp) {
		unsigned int dst_nents = edesc->dst_nents ? : 1;

		FUNC5(areq->dst, dst_nents, ctx->iv, ivsize,
				   areq->assoclen + cryptlen - ivsize);
	}
}