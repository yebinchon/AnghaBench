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
typedef  int /*<<< orphan*/  u8 ;
struct talitos_private {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  hdr; } ;
struct talitos_edesc {TYPE_1__ desc; } ;
struct talitos_ctx {scalar_t__ keylen; int /*<<< orphan*/  desc_hdr_template; struct device* dev; } ;
struct talitos_ahash_req_ctx {size_t buf_idx; unsigned int nbuf; unsigned int to_hash_later; scalar_t__ last; scalar_t__ first; int /*<<< orphan*/  swinit; int /*<<< orphan*/ ** buf; int /*<<< orphan*/  psrc; int /*<<< orphan*/  bufsl; } ;
struct device {int dummy; } ;
struct crypto_ahash {int dummy; } ;
struct ahash_request {int /*<<< orphan*/  src; } ;

/* Variables and functions */
 int /*<<< orphan*/  DESC_HDR_MODE0_MDEU_CONT ; 
 int /*<<< orphan*/  DESC_HDR_MODE0_MDEU_HMAC ; 
 int /*<<< orphan*/  DESC_HDR_MODE0_MDEU_INIT ; 
 int /*<<< orphan*/  DESC_HDR_MODE0_MDEU_PAD ; 
 scalar_t__ FUNC0 (struct talitos_edesc*) ; 
 int FUNC1 (struct talitos_edesc*) ; 
 int /*<<< orphan*/  ahash_done ; 
 struct talitos_edesc* FUNC2 (struct ahash_request*,unsigned int) ; 
 struct talitos_ahash_req_ctx* FUNC3 (struct ahash_request*) ; 
 int FUNC4 (struct talitos_edesc*,struct ahash_request*,unsigned int,int /*<<< orphan*/ ) ; 
 struct talitos_ctx* FUNC5 (struct crypto_ahash*) ; 
 struct crypto_ahash* FUNC6 (struct ahash_request*) ; 
 int /*<<< orphan*/  FUNC7 (struct crypto_ahash*) ; 
 unsigned int FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct device*,char*) ; 
 struct talitos_private* FUNC10 (struct device*) ; 
 int FUNC11 (struct talitos_private*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,unsigned int) ; 
 int FUNC16 (int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,unsigned int) ; 

__attribute__((used)) static int FUNC19(struct ahash_request *areq, unsigned int nbytes)
{
	struct crypto_ahash *tfm = FUNC6(areq);
	struct talitos_ctx *ctx = FUNC5(tfm);
	struct talitos_ahash_req_ctx *req_ctx = FUNC3(areq);
	struct talitos_edesc *edesc;
	unsigned int blocksize =
			FUNC8(FUNC7(tfm));
	unsigned int nbytes_to_hash;
	unsigned int to_hash_later;
	unsigned int nsg;
	int nents;
	struct device *dev = ctx->dev;
	struct talitos_private *priv = FUNC10(dev);
	bool is_sec1 = FUNC11(priv);
	u8 *ctx_buf = req_ctx->buf[req_ctx->buf_idx];

	if (!req_ctx->last && (nbytes + req_ctx->nbuf <= blocksize)) {
		/* Buffer up to one whole block */
		nents = FUNC16(areq->src, nbytes);
		if (nents < 0) {
			FUNC9(ctx->dev, "Invalid number of src SG.\n");
			return nents;
		}
		FUNC14(areq->src, nents,
				  ctx_buf + req_ctx->nbuf, nbytes);
		req_ctx->nbuf += nbytes;
		return 0;
	}

	/* At least (blocksize + 1) bytes are available to hash */
	nbytes_to_hash = nbytes + req_ctx->nbuf;
	to_hash_later = nbytes_to_hash & (blocksize - 1);

	if (req_ctx->last)
		to_hash_later = 0;
	else if (to_hash_later)
		/* There is a partial block. Hash the full block(s) now */
		nbytes_to_hash -= to_hash_later;
	else {
		/* Keep one block buffered */
		nbytes_to_hash -= blocksize;
		to_hash_later = blocksize;
	}

	/* Chain in any previously buffered data */
	if (!is_sec1 && req_ctx->nbuf) {
		nsg = (req_ctx->nbuf < nbytes_to_hash) ? 2 : 1;
		FUNC15(req_ctx->bufsl, nsg);
		FUNC18(req_ctx->bufsl, ctx_buf, req_ctx->nbuf);
		if (nsg > 1)
			FUNC13(req_ctx->bufsl, 2, areq->src);
		req_ctx->psrc = req_ctx->bufsl;
	} else if (is_sec1 && req_ctx->nbuf && req_ctx->nbuf < blocksize) {
		int offset;

		if (nbytes_to_hash > blocksize)
			offset = blocksize - req_ctx->nbuf;
		else
			offset = nbytes_to_hash - req_ctx->nbuf;
		nents = FUNC16(areq->src, offset);
		if (nents < 0) {
			FUNC9(ctx->dev, "Invalid number of src SG.\n");
			return nents;
		}
		FUNC14(areq->src, nents,
				  ctx_buf + req_ctx->nbuf, offset);
		req_ctx->nbuf += offset;
		req_ctx->psrc = FUNC12(req_ctx->bufsl, areq->src,
						 offset);
	} else
		req_ctx->psrc = areq->src;

	if (to_hash_later) {
		nents = FUNC16(areq->src, nbytes);
		if (nents < 0) {
			FUNC9(ctx->dev, "Invalid number of src SG.\n");
			return nents;
		}
		FUNC17(areq->src, nents,
				   req_ctx->buf[(req_ctx->buf_idx + 1) & 1],
				      to_hash_later,
				      nbytes - to_hash_later);
	}
	req_ctx->to_hash_later = to_hash_later;

	/* Allocate extended descriptor */
	edesc = FUNC2(areq, nbytes_to_hash);
	if (FUNC0(edesc))
		return FUNC1(edesc);

	edesc->desc.hdr = ctx->desc_hdr_template;

	/* On last one, request SEC to pad; otherwise continue */
	if (req_ctx->last)
		edesc->desc.hdr |= DESC_HDR_MODE0_MDEU_PAD;
	else
		edesc->desc.hdr |= DESC_HDR_MODE0_MDEU_CONT;

	/* request SEC to INIT hash. */
	if (req_ctx->first && !req_ctx->swinit)
		edesc->desc.hdr |= DESC_HDR_MODE0_MDEU_INIT;

	/* When the tfm context has a keylen, it's an HMAC.
	 * A first or last (ie. not middle) descriptor must request HMAC.
	 */
	if (ctx->keylen && (req_ctx->first || req_ctx->last))
		edesc->desc.hdr |= DESC_HDR_MODE0_MDEU_HMAC;

	return FUNC4(edesc, areq, nbytes_to_hash, ahash_done);
}