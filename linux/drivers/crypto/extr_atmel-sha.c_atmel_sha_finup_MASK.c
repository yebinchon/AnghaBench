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
struct atmel_sha_reqctx {int /*<<< orphan*/  flags; } ;
struct ahash_request {int dummy; } ;

/* Variables and functions */
 int CRYPTO_TFM_REQ_MAY_BACKLOG ; 
 int EBUSY ; 
 int EINPROGRESS ; 
 int /*<<< orphan*/  SHA_FLAGS_FINUP ; 
 struct atmel_sha_reqctx* FUNC0 (struct ahash_request*) ; 
 int FUNC1 (struct ahash_request*) ; 
 int FUNC2 (struct ahash_request*) ; 
 int FUNC3 (struct ahash_request*) ; 

__attribute__((used)) static int FUNC4(struct ahash_request *req)
{
	struct atmel_sha_reqctx *ctx = FUNC0(req);
	int err1, err2;

	ctx->flags |= SHA_FLAGS_FINUP;

	err1 = FUNC3(req);
	if (err1 == -EINPROGRESS ||
	    (err1 == -EBUSY && (FUNC1(req) &
				CRYPTO_TFM_REQ_MAY_BACKLOG)))
		return err1;

	/*
	 * final() has to be always called to cleanup resources
	 * even if udpate() failed, except EINPROGRESS
	 */
	err2 = FUNC2(req);

	return err1 ?: err2;
}