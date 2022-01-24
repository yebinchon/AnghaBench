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
struct atmel_sha_reqctx {int /*<<< orphan*/  flags; struct atmel_sha_dev* dd; } ;
struct atmel_sha_dev {int flags; } ;
struct ahash_request {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  SHA_FLAGS_ERROR ; 
 int SHA_FLAGS_FINAL ; 
 struct atmel_sha_reqctx* FUNC0 (struct ahash_request*) ; 
 int /*<<< orphan*/  FUNC1 (struct atmel_sha_dev*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct ahash_request*) ; 
 int FUNC3 (struct ahash_request*) ; 

__attribute__((used)) static void FUNC4(struct ahash_request *req, int err)
{
	struct atmel_sha_reqctx *ctx = FUNC0(req);
	struct atmel_sha_dev *dd = ctx->dd;

	if (!err) {
		FUNC2(req);
		if (SHA_FLAGS_FINAL & dd->flags)
			err = FUNC3(req);
	} else {
		ctx->flags |= SHA_FLAGS_ERROR;
	}

	/* atomic operation is not needed here */
	(void)FUNC1(dd, err);
}