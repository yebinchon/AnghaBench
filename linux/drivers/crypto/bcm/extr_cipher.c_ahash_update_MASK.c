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
struct iproc_ctx_s {int /*<<< orphan*/  shash; } ;
struct crypto_ahash {int dummy; } ;
struct TYPE_2__ {int flags; } ;
struct ahash_request {int /*<<< orphan*/  nbytes; scalar_t__ src; TYPE_1__ base; } ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 int CRYPTO_TFM_REQ_MAY_BACKLOG ; 
 int CRYPTO_TFM_REQ_MAY_SLEEP ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int FUNC0 (struct ahash_request*) ; 
 struct iproc_ctx_s* FUNC1 (struct crypto_ahash*) ; 
 struct crypto_ahash* FUNC2 (struct ahash_request*) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC7 (scalar_t__) ; 
 scalar_t__ FUNC8 (struct iproc_ctx_s*) ; 

__attribute__((used)) static int FUNC9(struct ahash_request *req)
{
	struct crypto_ahash *tfm = FUNC2(req);
	struct iproc_ctx_s *ctx = FUNC1(tfm);
	u8 *tmpbuf;
	int ret;
	int nents;
	gfp_t gfp;

	if (FUNC8(ctx)) {
		/*
		 * If we get an incremental hashing request and it's not
		 * supported by the hardware, we need to handle it in software
		 * by calling synchronous hash functions.
		 */
		if (req->src)
			nents = FUNC7(req->src);
		else
			return -EINVAL;

		/* Copy data from req scatterlist to tmp buffer */
		gfp = (req->base.flags & (CRYPTO_TFM_REQ_MAY_BACKLOG |
		       CRYPTO_TFM_REQ_MAY_SLEEP)) ? GFP_KERNEL : GFP_ATOMIC;
		tmpbuf = FUNC5(req->nbytes, gfp);
		if (!tmpbuf)
			return -ENOMEM;

		if (FUNC6(req->src, nents, tmpbuf, req->nbytes) !=
				req->nbytes) {
			FUNC4(tmpbuf);
			return -EINVAL;
		}

		/* Call synchronous update */
		ret = FUNC3(ctx->shash, tmpbuf, req->nbytes);
		FUNC4(tmpbuf);
	} else {
		/* Otherwise call the internal function which uses SPU hw */
		ret = FUNC0(req);
	}

	return ret;
}