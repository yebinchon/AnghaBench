#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  tfm; } ;
typedef  TYPE_2__ u8 ;
struct iproc_ctx_s {TYPE_2__* shash; } ;
struct crypto_ahash {int dummy; } ;
struct TYPE_8__ {int flags; } ;
struct ahash_request {int /*<<< orphan*/  result; int /*<<< orphan*/  nbytes; scalar_t__ src; TYPE_1__ base; } ;
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
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (TYPE_2__*,TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 TYPE_2__* FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,int,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int FUNC8 (scalar_t__) ; 
 scalar_t__ FUNC9 (struct iproc_ctx_s*) ; 

__attribute__((used)) static int FUNC10(struct ahash_request *req)
{
	struct crypto_ahash *tfm = FUNC2(req);
	struct iproc_ctx_s *ctx = FUNC1(tfm);
	u8 *tmpbuf;
	int ret;
	int nents;
	gfp_t gfp;

	if (FUNC9(ctx)) {
		/*
		 * If we get an incremental hashing request and it's not
		 * supported by the hardware, we need to handle it in software
		 * by calling synchronous hash functions.
		 */
		if (req->src) {
			nents = FUNC8(req->src);
		} else {
			ret = -EINVAL;
			goto ahash_finup_exit;
		}

		/* Copy data from req scatterlist to tmp buffer */
		gfp = (req->base.flags & (CRYPTO_TFM_REQ_MAY_BACKLOG |
		       CRYPTO_TFM_REQ_MAY_SLEEP)) ? GFP_KERNEL : GFP_ATOMIC;
		tmpbuf = FUNC6(req->nbytes, gfp);
		if (!tmpbuf) {
			ret = -ENOMEM;
			goto ahash_finup_exit;
		}

		if (FUNC7(req->src, nents, tmpbuf, req->nbytes) !=
				req->nbytes) {
			ret = -EINVAL;
			goto ahash_finup_free;
		}

		/* Call synchronous update */
		ret = FUNC4(ctx->shash, tmpbuf, req->nbytes,
					 req->result);
	} else {
		/* Otherwise call the internal function which uses SPU hw */
		return FUNC0(req);
	}
ahash_finup_free:
	FUNC5(tmpbuf);

ahash_finup_exit:
	/* Done with hash, can deallocate it now */
	FUNC3(ctx->shash->tfm);
	FUNC5(ctx->shash);
	return ret;
}