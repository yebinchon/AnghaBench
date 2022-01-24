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
struct atmel_sha_reqctx {int op; } ;
struct atmel_sha_dev {int /*<<< orphan*/  resume; struct ahash_request* req; } ;
struct ahash_request {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
#define  SHA_OP_DIGEST 131 
#define  SHA_OP_FINAL 130 
#define  SHA_OP_INIT 129 
#define  SHA_OP_UPDATE 128 
 struct atmel_sha_reqctx* FUNC0 (struct ahash_request*) ; 
 int FUNC1 (struct atmel_sha_dev*,int) ; 
 int /*<<< orphan*/  atmel_sha_done ; 
 int FUNC2 (struct atmel_sha_dev*) ; 
 int /*<<< orphan*/  atmel_sha_hmac_digest2 ; 
 int /*<<< orphan*/  atmel_sha_hmac_final ; 
 int /*<<< orphan*/  atmel_sha_hmac_init_done ; 
 int FUNC3 (struct atmel_sha_dev*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct atmel_sha_dev*) ; 
 int FUNC5 (struct atmel_sha_dev*) ; 

__attribute__((used)) static int FUNC6(struct atmel_sha_dev *dd)
{
	struct ahash_request *req = dd->req;
	struct atmel_sha_reqctx *ctx = FUNC0(req);
	int err;

	err = FUNC4(dd);
	if (err)
		return FUNC1(dd, err);

	switch (ctx->op) {
	case SHA_OP_INIT:
		err = FUNC3(dd, atmel_sha_hmac_init_done);
		break;

	case SHA_OP_UPDATE:
		dd->resume = atmel_sha_done;
		err = FUNC5(dd);
		break;

	case SHA_OP_FINAL:
		dd->resume = atmel_sha_hmac_final;
		err = FUNC2(dd);
		break;

	case SHA_OP_DIGEST:
		err = FUNC3(dd, atmel_sha_hmac_digest2);
		break;

	default:
		return FUNC1(dd, -EINVAL);
	}

	return err;
}