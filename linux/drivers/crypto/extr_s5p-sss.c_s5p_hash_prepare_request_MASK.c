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
struct s5p_hash_reqctx {int finup; int total; int bufcnt; int skip; int sg_len; int /*<<< orphan*/  sgl; int /*<<< orphan*/  sg; TYPE_1__* dd; scalar_t__ buffer; } ;
struct ahash_request {int nbytes; int /*<<< orphan*/  src; } ;
struct TYPE_2__ {scalar_t__ xmit_buf; } ;

/* Variables and functions */
 int BUFLEN ; 
 scalar_t__ FUNC0 (int,int) ; 
 struct s5p_hash_reqctx* FUNC1 (struct ahash_request*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,scalar_t__,int) ; 
 int FUNC3 (struct s5p_hash_reqctx*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,scalar_t__,int) ; 
 scalar_t__ FUNC7 (int) ; 

__attribute__((used)) static int FUNC8(struct ahash_request *req, bool update)
{
	struct s5p_hash_reqctx *ctx = FUNC1(req);
	bool final = ctx->finup;
	int xmit_len, hash_later, nbytes;
	int ret;

	if (update)
		nbytes = req->nbytes;
	else
		nbytes = 0;

	ctx->total = nbytes + ctx->bufcnt;
	if (!ctx->total)
		return 0;

	if (nbytes && (!FUNC0(ctx->bufcnt, BUFLEN))) {
		/* bytes left from previous request, so fill up to BUFLEN */
		int len = BUFLEN - ctx->bufcnt % BUFLEN;

		if (len > nbytes)
			len = nbytes;

		FUNC4(ctx->buffer + ctx->bufcnt, req->src,
					 0, len, 0);
		ctx->bufcnt += len;
		nbytes -= len;
		ctx->skip = len;
	} else {
		ctx->skip = 0;
	}

	if (ctx->bufcnt)
		FUNC2(ctx->dd->xmit_buf, ctx->buffer, ctx->bufcnt);

	xmit_len = ctx->total;
	if (final) {
		hash_later = 0;
	} else {
		if (FUNC0(xmit_len, BUFLEN))
			xmit_len -= BUFLEN;
		else
			xmit_len -= xmit_len & (BUFLEN - 1);

		hash_later = ctx->total - xmit_len;
		/* copy hash_later bytes from end of req->src */
		/* previous bytes are in xmit_buf, so no overwrite */
		FUNC4(ctx->buffer, req->src,
					 req->nbytes - hash_later,
					 hash_later, 0);
	}

	if (xmit_len > BUFLEN) {
		ret = FUNC3(ctx, req->src, nbytes - hash_later,
					   final);
		if (ret)
			return ret;
	} else {
		/* have buffered data only */
		if (FUNC7(!ctx->bufcnt)) {
			/* first update didn't fill up buffer */
			FUNC4(ctx->dd->xmit_buf, req->src,
						 0, xmit_len, 0);
		}

		FUNC5(ctx->sgl, 1);
		FUNC6(ctx->sgl, ctx->dd->xmit_buf, xmit_len);

		ctx->sg = ctx->sgl;
		ctx->sg_len = 1;
	}

	ctx->bufcnt = hash_later;
	if (!final)
		ctx->total = xmit_len;

	return 0;
}