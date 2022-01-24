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
struct talitos_ptr {int dummy; } ;
struct talitos_private {int dummy; } ;
struct talitos_desc {int hdr; struct talitos_ptr* ptr; } ;
struct talitos_edesc {unsigned int dma_link_tbl; unsigned int dma_len; unsigned int iv_dma; struct talitos_ptr* link_tbl; scalar_t__ dst_nents; int /*<<< orphan*/  buf; scalar_t__ src_nents; struct talitos_desc desc; } ;
struct talitos_ctx {unsigned int dma_key; unsigned int authkeylen; unsigned int enckeylen; int /*<<< orphan*/  ch; int /*<<< orphan*/  iv; struct device* dev; } ;
struct device {int dummy; } ;
struct crypto_aead {int dummy; } ;
struct aead_request {unsigned int cryptlen; scalar_t__ src; unsigned int assoclen; scalar_t__ dst; } ;
typedef  unsigned int dma_addr_t ;

/* Variables and functions */
 int DESC_HDR_MODE1_MDEU_CICV ; 
 int DESC_HDR_TYPE_IPSEC_ESP ; 
 int /*<<< orphan*/  DESC_PTR_LNKTBL_RET ; 
 int /*<<< orphan*/  DMA_BIDIRECTIONAL ; 
 int /*<<< orphan*/  DMA_FROM_DEVICE ; 
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 int EINPROGRESS ; 
 unsigned int FUNC0 (struct crypto_aead*) ; 
 struct talitos_ctx* FUNC1 (struct crypto_aead*) ; 
 unsigned int FUNC2 (struct crypto_aead*) ; 
 struct crypto_aead* FUNC3 (struct aead_request*) ; 
 struct talitos_private* FUNC4 (struct device*) ; 
 int FUNC5 (struct device*,scalar_t__,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct device*,unsigned int,unsigned int,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct talitos_private*) ; 
 int /*<<< orphan*/  FUNC8 (struct device*,struct talitos_edesc*,struct aead_request*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct talitos_edesc*) ; 
 int /*<<< orphan*/  FUNC10 (struct device*,struct talitos_ptr*,unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__,int,int /*<<< orphan*/ ,unsigned int) ; 
 int FUNC12 (struct device*,scalar_t__,unsigned int,struct talitos_edesc*,struct talitos_ptr*,int,unsigned int,int) ; 
 int FUNC13 (struct device*,scalar_t__,unsigned int,struct talitos_edesc*,struct talitos_ptr*,int,unsigned int,int,int,int) ; 
 int FUNC14 (struct device*,int /*<<< orphan*/ ,struct talitos_desc*,void (*) (struct device*,struct talitos_desc*,void*,int),struct aead_request*) ; 
 int /*<<< orphan*/  FUNC15 (struct talitos_ptr*,unsigned int,unsigned int,int) ; 
 int /*<<< orphan*/  FUNC16 (struct talitos_ptr*,unsigned int,int) ; 
 int /*<<< orphan*/  FUNC17 (struct talitos_ptr*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC18(struct talitos_edesc *edesc, struct aead_request *areq,
		     bool encrypt,
		     void (*callback)(struct device *dev,
				      struct talitos_desc *desc,
				      void *context, int error))
{
	struct crypto_aead *aead = FUNC3(areq);
	unsigned int authsize = FUNC0(aead);
	struct talitos_ctx *ctx = FUNC1(aead);
	struct device *dev = ctx->dev;
	struct talitos_desc *desc = &edesc->desc;
	unsigned int cryptlen = areq->cryptlen - (encrypt ? 0 : authsize);
	unsigned int ivsize = FUNC2(aead);
	int tbl_off = 0;
	int sg_count, ret;
	int elen = 0;
	bool sync_needed = false;
	struct talitos_private *priv = FUNC4(dev);
	bool is_sec1 = FUNC7(priv);
	bool is_ipsec_esp = desc->hdr & DESC_HDR_TYPE_IPSEC_ESP;
	struct talitos_ptr *civ_ptr = &desc->ptr[is_ipsec_esp ? 2 : 3];
	struct talitos_ptr *ckey_ptr = &desc->ptr[is_ipsec_esp ? 3 : 2];
	dma_addr_t dma_icv = edesc->dma_link_tbl + edesc->dma_len - authsize;

	/* hmac key */
	FUNC15(&desc->ptr[0], ctx->dma_key, ctx->authkeylen, is_sec1);

	sg_count = edesc->src_nents ?: 1;
	if (is_sec1 && sg_count > 1)
		FUNC11(areq->src, sg_count, edesc->buf,
				  areq->assoclen + cryptlen);
	else
		sg_count = FUNC5(dev, areq->src, sg_count,
				      (areq->src == areq->dst) ?
				      DMA_BIDIRECTIONAL : DMA_TO_DEVICE);

	/* hmac data */
	ret = FUNC12(dev, areq->src, areq->assoclen, edesc,
			     &desc->ptr[1], sg_count, 0, tbl_off);

	if (ret > 1) {
		tbl_off += ret;
		sync_needed = true;
	}

	/* cipher iv */
	FUNC15(civ_ptr, edesc->iv_dma, ivsize, is_sec1);

	/* cipher key */
	FUNC15(ckey_ptr, ctx->dma_key  + ctx->authkeylen,
		       ctx->enckeylen, is_sec1);

	/*
	 * cipher in
	 * map and adjust cipher len to aead request cryptlen.
	 * extent is bytes of HMAC postpended to ciphertext,
	 * typically 12 for ipsec
	 */
	if (is_ipsec_esp && (desc->hdr & DESC_HDR_MODE1_MDEU_CICV))
		elen = authsize;

	ret = FUNC13(dev, areq->src, cryptlen, edesc, &desc->ptr[4],
				 sg_count, areq->assoclen, tbl_off, elen,
				 false);

	if (ret > 1) {
		tbl_off += ret;
		sync_needed = true;
	}

	/* cipher out */
	if (areq->src != areq->dst) {
		sg_count = edesc->dst_nents ? : 1;
		if (!is_sec1 || sg_count == 1)
			FUNC5(dev, areq->dst, sg_count, DMA_FROM_DEVICE);
	}

	if (is_ipsec_esp && encrypt)
		elen = authsize;
	else
		elen = 0;
	ret = FUNC13(dev, areq->dst, cryptlen, edesc, &desc->ptr[5],
				 sg_count, areq->assoclen, tbl_off, elen,
				 is_ipsec_esp && !encrypt);
	tbl_off += ret;

	if (!encrypt && is_ipsec_esp) {
		struct talitos_ptr *tbl_ptr = &edesc->link_tbl[tbl_off];

		/* Add an entry to the link table for ICV data */
		FUNC17(tbl_ptr - 1, 0, is_sec1);
		FUNC17(tbl_ptr, DESC_PTR_LNKTBL_RET, is_sec1);

		/* icv data follows link tables */
		FUNC15(tbl_ptr, dma_icv, authsize, is_sec1);
		FUNC16(&desc->ptr[5], authsize, is_sec1);
		sync_needed = true;
	} else if (!encrypt) {
		FUNC15(&desc->ptr[6], dma_icv, authsize, is_sec1);
		sync_needed = true;
	} else if (!is_ipsec_esp) {
		FUNC12(dev, areq->dst, authsize, edesc, &desc->ptr[6],
			       sg_count, areq->assoclen + cryptlen, tbl_off);
	}

	/* iv out */
	if (is_ipsec_esp)
		FUNC10(dev, &desc->ptr[6], ivsize, ctx->iv,
				       DMA_FROM_DEVICE);

	if (sync_needed)
		FUNC6(dev, edesc->dma_link_tbl,
					   edesc->dma_len,
					   DMA_BIDIRECTIONAL);

	ret = FUNC14(dev, ctx->ch, desc, callback, areq);
	if (ret != -EINPROGRESS) {
		FUNC8(dev, edesc, areq, encrypt);
		FUNC9(edesc);
	}
	return ret;
}