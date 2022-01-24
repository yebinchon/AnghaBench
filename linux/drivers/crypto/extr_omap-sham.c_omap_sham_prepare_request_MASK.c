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
struct omap_sham_reqctx {int flags; int total; int bufcnt; int offset; int sg_len; scalar_t__ buffer; int /*<<< orphan*/  sgl; int /*<<< orphan*/  sg; TYPE_1__* dd; } ;
struct ahash_request {int nbytes; int /*<<< orphan*/  src; } ;
struct TYPE_2__ {scalar_t__ xmit_buf; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int,int) ; 
 int /*<<< orphan*/  FLAGS_FINUP ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 
 struct omap_sham_reqctx* FUNC3 (struct ahash_request*) ; 
 int FUNC4 (struct omap_sham_reqctx*) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,scalar_t__,int) ; 
 int FUNC6 (int /*<<< orphan*/ ,int,int,int,struct omap_sham_reqctx*) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,scalar_t__,int) ; 

__attribute__((used)) static int FUNC11(struct ahash_request *req, bool update)
{
	struct omap_sham_reqctx *rctx = FUNC3(req);
	int bs;
	int ret;
	int nbytes;
	bool final = rctx->flags & FUNC0(FLAGS_FINUP);
	int xmit_len, hash_later;

	bs = FUNC4(rctx);

	if (update)
		nbytes = req->nbytes;
	else
		nbytes = 0;

	rctx->total = nbytes + rctx->bufcnt;

	if (!rctx->total)
		return 0;

	if (nbytes && (!FUNC2(rctx->bufcnt, bs))) {
		int len = bs - rctx->bufcnt % bs;

		if (len > nbytes)
			len = nbytes;
		FUNC7(rctx->buffer + rctx->bufcnt, req->src,
					 0, len, 0);
		rctx->bufcnt += len;
		nbytes -= len;
		rctx->offset = len;
	}

	if (rctx->bufcnt)
		FUNC5(rctx->dd->xmit_buf, rctx->buffer, rctx->bufcnt);

	ret = FUNC6(req->src, nbytes, bs, final, rctx);
	if (ret)
		return ret;

	xmit_len = rctx->total;

	if (!FUNC2(xmit_len, bs)) {
		if (final)
			xmit_len = FUNC1(xmit_len, bs) * bs;
		else
			xmit_len = xmit_len / bs * bs;
	} else if (!final) {
		xmit_len -= bs;
	}

	hash_later = rctx->total - xmit_len;
	if (hash_later < 0)
		hash_later = 0;

	if (rctx->bufcnt && nbytes) {
		/* have data from previous operation and current */
		FUNC9(rctx->sgl, 2);
		FUNC10(rctx->sgl, rctx->dd->xmit_buf, rctx->bufcnt);

		FUNC8(rctx->sgl, 2, req->src);

		rctx->sg = rctx->sgl;

		rctx->sg_len++;
	} else if (rctx->bufcnt) {
		/* have buffered data only */
		FUNC9(rctx->sgl, 1);
		FUNC10(rctx->sgl, rctx->dd->xmit_buf, xmit_len);

		rctx->sg = rctx->sgl;

		rctx->sg_len = 1;
	}

	if (hash_later) {
		int offset = 0;

		if (hash_later > req->nbytes) {
			FUNC5(rctx->buffer, rctx->buffer + xmit_len,
			       hash_later - req->nbytes);
			offset = hash_later - req->nbytes;
		}

		if (req->nbytes) {
			FUNC7(rctx->buffer + offset,
						 req->src,
						 offset + req->nbytes -
						 hash_later, hash_later, 0);
		}

		rctx->bufcnt = hash_later;
	} else {
		rctx->bufcnt = 0;
	}

	if (!final)
		rctx->total = xmit_len;

	return 0;
}