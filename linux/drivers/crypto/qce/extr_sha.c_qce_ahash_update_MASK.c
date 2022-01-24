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
struct scatterlist {int dummy; } ;
struct qce_sha_reqctx {unsigned int count; unsigned int buflen; unsigned int nbytes_orig; struct scatterlist* sg; int /*<<< orphan*/  tmpbuf; scalar_t__ buf; struct scatterlist* src_orig; } ;
struct qce_device {int (* async_req_enqueue ) (struct qce_device*,TYPE_1__*) ;} ;
struct qce_alg_template {struct qce_device* qce; } ;
struct crypto_ahash {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  tfm; } ;
struct ahash_request {unsigned int nbytes; TYPE_1__ base; struct scatterlist* src; } ;

/* Variables and functions */
 int EINVAL ; 
 struct qce_sha_reqctx* FUNC0 (struct ahash_request*) ; 
 struct crypto_ahash* FUNC1 (struct ahash_request*) ; 
 int /*<<< orphan*/  FUNC2 (struct crypto_ahash*) ; 
 unsigned int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,struct scatterlist*,unsigned int,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct scatterlist*,int,struct scatterlist*) ; 
 unsigned int FUNC7 (struct scatterlist*) ; 
 int /*<<< orphan*/  FUNC8 (struct scatterlist*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct scatterlist*) ; 
 struct scatterlist* FUNC10 (struct scatterlist*) ; 
 int /*<<< orphan*/  FUNC11 (struct scatterlist*,int /*<<< orphan*/ ,int) ; 
 int FUNC12 (struct qce_device*,TYPE_1__*) ; 
 struct qce_alg_template* FUNC13 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC14(struct ahash_request *req)
{
	struct crypto_ahash *tfm = FUNC1(req);
	struct qce_sha_reqctx *rctx = FUNC0(req);
	struct qce_alg_template *tmpl = FUNC13(req->base.tfm);
	struct qce_device *qce = tmpl->qce;
	struct scatterlist *sg_last, *sg;
	unsigned int total, len;
	unsigned int hash_later;
	unsigned int nbytes;
	unsigned int blocksize;

	blocksize = FUNC3(FUNC2(tfm));
	rctx->count += req->nbytes;

	/* check for buffer from previous updates and append it */
	total = req->nbytes + rctx->buflen;

	if (total <= blocksize) {
		FUNC5(rctx->buf + rctx->buflen, req->src,
					 0, req->nbytes, 0);
		rctx->buflen += req->nbytes;
		return 0;
	}

	/* save the original req structure fields */
	rctx->src_orig = req->src;
	rctx->nbytes_orig = req->nbytes;

	/*
	 * if we have data from previous update copy them on buffer. The old
	 * data will be combined with current request bytes.
	 */
	if (rctx->buflen)
		FUNC4(rctx->tmpbuf, rctx->buf, rctx->buflen);

	/* calculate how many bytes will be hashed later */
	hash_later = total % blocksize;
	if (hash_later) {
		unsigned int src_offset = req->nbytes - hash_later;
		FUNC5(rctx->buf, req->src, src_offset,
					 hash_later, 0);
	}

	/* here nbytes is multiple of blocksize */
	nbytes = total - hash_later;

	len = rctx->buflen;
	sg = sg_last = req->src;

	while (len < nbytes && sg) {
		if (len + FUNC7(sg) > nbytes)
			break;
		len += FUNC7(sg);
		sg_last = sg;
		sg = FUNC10(sg);
	}

	if (!sg_last)
		return -EINVAL;

	FUNC9(sg_last);

	if (rctx->buflen) {
		FUNC8(rctx->sg, 2);
		FUNC11(rctx->sg, rctx->tmpbuf, rctx->buflen);
		FUNC6(rctx->sg, 2, req->src);
		req->src = rctx->sg;
	}

	req->nbytes = nbytes;
	rctx->buflen = hash_later;

	return qce->async_req_enqueue(tmpl->qce, &req->base);
}