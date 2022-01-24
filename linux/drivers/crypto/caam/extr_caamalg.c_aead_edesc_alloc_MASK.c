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
struct sec4_sg_entry {int dummy; } ;
struct device {int dummy; } ;
struct crypto_aead {int dummy; } ;
struct caam_ctx {unsigned int authsize; struct device* jrdev; } ;
struct TYPE_2__ {int flags; } ;
struct aead_request {int assoclen; int cryptlen; int /*<<< orphan*/  dst; int /*<<< orphan*/  src; TYPE_1__ base; } ;
struct aead_edesc {int src_nents; int dst_nents; int mapped_src_nents; int mapped_dst_nents; int sec4_sg_bytes; int /*<<< orphan*/  sec4_sg_dma; void* sec4_sg; } ;
typedef  int gfp_t ;

/* Variables and functions */
 int CRYPTO_TFM_REQ_MAY_SLEEP ; 
 int /*<<< orphan*/  DMA_BIDIRECTIONAL ; 
 int /*<<< orphan*/  DMA_FROM_DEVICE ; 
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 int ENOMEM ; 
 struct aead_edesc* FUNC0 (int) ; 
 int GFP_ATOMIC ; 
 int GFP_DMA ; 
 int GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (struct device*,struct aead_edesc*,struct aead_request*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct caam_ctx* FUNC3 (struct crypto_aead*) ; 
 struct crypto_aead* FUNC4 (struct aead_request*) ; 
 int /*<<< orphan*/  FUNC5 (struct device*,char*,...) ; 
 int FUNC6 (struct device*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct device*,void*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (struct device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct device*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct aead_edesc*) ; 
 struct aead_edesc* FUNC11 (int,int) ; 
 scalar_t__ FUNC12 (int) ; 
 int FUNC13 (int) ; 
 int FUNC14 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int,void*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC16 (int) ; 

__attribute__((used)) static struct aead_edesc *FUNC17(struct aead_request *req,
					   int desc_bytes, bool *all_contig_ptr,
					   bool encrypt)
{
	struct crypto_aead *aead = FUNC4(req);
	struct caam_ctx *ctx = FUNC3(aead);
	struct device *jrdev = ctx->jrdev;
	gfp_t flags = (req->base.flags & CRYPTO_TFM_REQ_MAY_SLEEP) ?
		       GFP_KERNEL : GFP_ATOMIC;
	int src_nents, mapped_src_nents, dst_nents = 0, mapped_dst_nents = 0;
	int src_len, dst_len = 0;
	struct aead_edesc *edesc;
	int sec4_sg_index, sec4_sg_len, sec4_sg_bytes;
	unsigned int authsize = ctx->authsize;

	if (FUNC16(req->dst != req->src)) {
		src_len = req->assoclen + req->cryptlen;
		dst_len = src_len + (encrypt ? authsize : (-authsize));

		src_nents = FUNC14(req->src, src_len);
		if (FUNC16(src_nents < 0)) {
			FUNC5(jrdev, "Insufficient bytes (%d) in src S/G\n",
				src_len);
			return FUNC0(src_nents);
		}

		dst_nents = FUNC14(req->dst, dst_len);
		if (FUNC16(dst_nents < 0)) {
			FUNC5(jrdev, "Insufficient bytes (%d) in dst S/G\n",
				dst_len);
			return FUNC0(dst_nents);
		}
	} else {
		src_len = req->assoclen + req->cryptlen +
			  (encrypt ? authsize : 0);

		src_nents = FUNC14(req->src, src_len);
		if (FUNC16(src_nents < 0)) {
			FUNC5(jrdev, "Insufficient bytes (%d) in src S/G\n",
				src_len);
			return FUNC0(src_nents);
		}
	}

	if (FUNC12(req->src == req->dst)) {
		mapped_src_nents = FUNC6(jrdev, req->src, src_nents,
					      DMA_BIDIRECTIONAL);
		if (FUNC16(!mapped_src_nents)) {
			FUNC5(jrdev, "unable to map source\n");
			return FUNC0(-ENOMEM);
		}
	} else {
		/* Cover also the case of null (zero length) input data */
		if (src_nents) {
			mapped_src_nents = FUNC6(jrdev, req->src,
						      src_nents, DMA_TO_DEVICE);
			if (FUNC16(!mapped_src_nents)) {
				FUNC5(jrdev, "unable to map source\n");
				return FUNC0(-ENOMEM);
			}
		} else {
			mapped_src_nents = 0;
		}

		/* Cover also the case of null (zero length) output data */
		if (dst_nents) {
			mapped_dst_nents = FUNC6(jrdev, req->dst,
						      dst_nents,
						      DMA_FROM_DEVICE);
			if (FUNC16(!mapped_dst_nents)) {
				FUNC5(jrdev, "unable to map destination\n");
				FUNC9(jrdev, req->src, src_nents,
					     DMA_TO_DEVICE);
				return FUNC0(-ENOMEM);
			}
		} else {
			mapped_dst_nents = 0;
		}
	}

	/*
	 * HW reads 4 S/G entries at a time; make sure the reads don't go beyond
	 * the end of the table by allocating more S/G entries.
	 */
	sec4_sg_len = mapped_src_nents > 1 ? mapped_src_nents : 0;
	if (mapped_dst_nents > 1)
		sec4_sg_len += FUNC13(mapped_dst_nents);
	else
		sec4_sg_len = FUNC13(sec4_sg_len);

	sec4_sg_bytes = sec4_sg_len * sizeof(struct sec4_sg_entry);

	/* allocate space for base edesc and hw desc commands, link tables */
	edesc = FUNC11(sizeof(*edesc) + desc_bytes + sec4_sg_bytes,
			GFP_DMA | flags);
	if (!edesc) {
		FUNC2(jrdev, req->src, req->dst, src_nents, dst_nents, 0,
			   0, 0, 0);
		return FUNC0(-ENOMEM);
	}

	edesc->src_nents = src_nents;
	edesc->dst_nents = dst_nents;
	edesc->mapped_src_nents = mapped_src_nents;
	edesc->mapped_dst_nents = mapped_dst_nents;
	edesc->sec4_sg = (void *)edesc + sizeof(struct aead_edesc) +
			 desc_bytes;
	*all_contig_ptr = !(mapped_src_nents > 1);

	sec4_sg_index = 0;
	if (mapped_src_nents > 1) {
		FUNC15(req->src, src_len,
				   edesc->sec4_sg + sec4_sg_index, 0);
		sec4_sg_index += mapped_src_nents;
	}
	if (mapped_dst_nents > 1) {
		FUNC15(req->dst, dst_len,
				   edesc->sec4_sg + sec4_sg_index, 0);
	}

	if (!sec4_sg_bytes)
		return edesc;

	edesc->sec4_sg_dma = FUNC7(jrdev, edesc->sec4_sg,
					    sec4_sg_bytes, DMA_TO_DEVICE);
	if (FUNC8(jrdev, edesc->sec4_sg_dma)) {
		FUNC5(jrdev, "unable to map S/G table\n");
		FUNC1(jrdev, edesc, req);
		FUNC10(edesc);
		return FUNC0(-ENOMEM);
	}

	edesc->sec4_sg_bytes = sec4_sg_bytes;

	return edesc;
}