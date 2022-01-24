#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_9__ ;
typedef  struct TYPE_16__   TYPE_7__ ;
typedef  struct TYPE_15__   TYPE_5__ ;
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  unsigned int u64 ;
struct scatterlist {int dummy; } ;
struct crypto_ahash {int dummy; } ;
struct TYPE_15__ {struct scatterlist* sgl; } ;
struct TYPE_14__ {int type; int src_len; unsigned int final; int msg_bits; scalar_t__ first; int /*<<< orphan*/  opad_len; int /*<<< orphan*/ * opad; struct scatterlist* src; int /*<<< orphan*/  ctx_len; struct scatterlist* ctx; } ;
struct TYPE_13__ {TYPE_4__ sha; } ;
struct TYPE_16__ {TYPE_3__ u; int /*<<< orphan*/  engine; int /*<<< orphan*/  entry; } ;
struct ccp_sha_req_ctx {int buf_count; unsigned int nbytes; unsigned int final; unsigned int hash_rem; unsigned int hash_cnt; int msg_bits; int type; TYPE_5__ data_sg; TYPE_7__ cmd; scalar_t__ first; struct scatterlist ctx_sg; struct scatterlist buf_sg; int /*<<< orphan*/  buf; int /*<<< orphan*/  ctx; struct scatterlist* src; } ;
struct TYPE_11__ {int /*<<< orphan*/  opad_count; scalar_t__ key_len; int /*<<< orphan*/  opad_sg; } ;
struct TYPE_12__ {TYPE_1__ sha; } ;
struct ccp_ctx {TYPE_2__ u; } ;
struct TYPE_17__ {int flags; } ;
struct ahash_request {TYPE_9__ base; struct scatterlist* src; } ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 int /*<<< orphan*/  CCP_ENGINE_SHA ; 
#define  CCP_SHA_TYPE_1 132 
#define  CCP_SHA_TYPE_224 131 
#define  CCP_SHA_TYPE_256 130 
#define  CCP_SHA_TYPE_384 129 
#define  CCP_SHA_TYPE_512 128 
 int CRYPTO_TFM_REQ_MAY_SLEEP ; 
 int EINVAL ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  SHA1_DIGEST_SIZE ; 
 int /*<<< orphan*/  SHA224_DIGEST_SIZE ; 
 int /*<<< orphan*/  SHA256_DIGEST_SIZE ; 
 int /*<<< orphan*/  SHA384_DIGEST_SIZE ; 
 int /*<<< orphan*/  SHA512_DIGEST_SIZE ; 
 struct ccp_sha_req_ctx* FUNC1 (struct ahash_request*) ; 
 int FUNC2 (TYPE_9__*,TYPE_7__*) ; 
 struct scatterlist* FUNC3 (TYPE_5__*,struct scatterlist*) ; 
 struct ccp_ctx* FUNC4 (struct crypto_ahash*) ; 
 struct crypto_ahash* FUNC5 (struct ahash_request*) ; 
 int /*<<< orphan*/  FUNC6 (struct crypto_ahash*) ; 
 unsigned int FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_7__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,struct scatterlist*,int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ) ; 
 int FUNC10 (TYPE_5__*,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC12 (struct scatterlist*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC13 (struct scatterlist*) ; 
 int FUNC14 (struct scatterlist*) ; 

__attribute__((used)) static int FUNC15(struct ahash_request *req, unsigned int nbytes,
			     unsigned int final)
{
	struct crypto_ahash *tfm = FUNC5(req);
	struct ccp_ctx *ctx = FUNC4(tfm);
	struct ccp_sha_req_ctx *rctx = FUNC1(req);
	struct scatterlist *sg;
	unsigned int block_size =
		FUNC7(FUNC6(tfm));
	unsigned int sg_count;
	gfp_t gfp;
	u64 len;
	int ret;

	len = (u64)rctx->buf_count + (u64)nbytes;

	if (!final && (len <= block_size)) {
		FUNC9(rctx->buf + rctx->buf_count, req->src,
					 0, nbytes, 0);
		rctx->buf_count += nbytes;

		return 0;
	}

	rctx->src = req->src;
	rctx->nbytes = nbytes;

	rctx->final = final;
	rctx->hash_rem = final ? 0 : len & (block_size - 1);
	rctx->hash_cnt = len - rctx->hash_rem;
	if (!final && !rctx->hash_rem) {
		/* CCP can't do zero length final, so keep some data around */
		rctx->hash_cnt -= block_size;
		rctx->hash_rem = block_size;
	}

	/* Initialize the context scatterlist */
	FUNC12(&rctx->ctx_sg, rctx->ctx, sizeof(rctx->ctx));

	sg = NULL;
	if (rctx->buf_count && nbytes) {
		/* Build the data scatterlist table - allocate enough entries
		 * for both data pieces (buffer and input data)
		 */
		gfp = req->base.flags & CRYPTO_TFM_REQ_MAY_SLEEP ?
			GFP_KERNEL : GFP_ATOMIC;
		sg_count = FUNC14(req->src) + 1;
		ret = FUNC10(&rctx->data_sg, sg_count, gfp);
		if (ret)
			return ret;

		FUNC12(&rctx->buf_sg, rctx->buf, rctx->buf_count);
		sg = FUNC3(&rctx->data_sg, &rctx->buf_sg);
		if (!sg) {
			ret = -EINVAL;
			goto e_free;
		}
		sg = FUNC3(&rctx->data_sg, req->src);
		if (!sg) {
			ret = -EINVAL;
			goto e_free;
		}
		FUNC13(sg);

		sg = rctx->data_sg.sgl;
	} else if (rctx->buf_count) {
		FUNC12(&rctx->buf_sg, rctx->buf, rctx->buf_count);

		sg = &rctx->buf_sg;
	} else if (nbytes) {
		sg = req->src;
	}

	rctx->msg_bits += (rctx->hash_cnt << 3);	/* Total in bits */

	FUNC8(&rctx->cmd, 0, sizeof(rctx->cmd));
	FUNC0(&rctx->cmd.entry);
	rctx->cmd.engine = CCP_ENGINE_SHA;
	rctx->cmd.u.sha.type = rctx->type;
	rctx->cmd.u.sha.ctx = &rctx->ctx_sg;

	switch (rctx->type) {
	case CCP_SHA_TYPE_1:
		rctx->cmd.u.sha.ctx_len = SHA1_DIGEST_SIZE;
		break;
	case CCP_SHA_TYPE_224:
		rctx->cmd.u.sha.ctx_len = SHA224_DIGEST_SIZE;
		break;
	case CCP_SHA_TYPE_256:
		rctx->cmd.u.sha.ctx_len = SHA256_DIGEST_SIZE;
		break;
	case CCP_SHA_TYPE_384:
		rctx->cmd.u.sha.ctx_len = SHA384_DIGEST_SIZE;
		break;
	case CCP_SHA_TYPE_512:
		rctx->cmd.u.sha.ctx_len = SHA512_DIGEST_SIZE;
		break;
	default:
		/* Should never get here */
		break;
	}

	rctx->cmd.u.sha.src = sg;
	rctx->cmd.u.sha.src_len = rctx->hash_cnt;
	rctx->cmd.u.sha.opad = ctx->u.sha.key_len ?
		&ctx->u.sha.opad_sg : NULL;
	rctx->cmd.u.sha.opad_len = ctx->u.sha.key_len ?
		ctx->u.sha.opad_count : 0;
	rctx->cmd.u.sha.first = rctx->first;
	rctx->cmd.u.sha.final = rctx->final;
	rctx->cmd.u.sha.msg_bits = rctx->msg_bits;

	rctx->first = 0;

	ret = FUNC2(&req->base, &rctx->cmd);

	return ret;

e_free:
	FUNC11(&rctx->data_sg);

	return ret;
}