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
struct TYPE_2__ {int flags; } ;
struct kpp_request {scalar_t__ src_len; int /*<<< orphan*/  src; TYPE_1__ base; } ;
struct crypto_kpp {int dummy; } ;
struct atmel_i2c_work_data {int /*<<< orphan*/  cmd; int /*<<< orphan*/  client; struct atmel_ecdh_ctx* ctx; } ;
struct atmel_ecdh_ctx {int /*<<< orphan*/  client; int /*<<< orphan*/  fallback; scalar_t__ do_fallback; } ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 scalar_t__ ATMEL_ECC_PUBKEY_SIZE ; 
 int CRYPTO_TFM_REQ_MAY_SLEEP ; 
 int EINPROGRESS ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  atmel_ecdh_done ; 
 int /*<<< orphan*/  FUNC0 (struct atmel_i2c_work_data*,int /*<<< orphan*/ ,struct kpp_request*) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct kpp_request*) ; 
 struct crypto_kpp* FUNC3 (struct kpp_request*) ; 
 int /*<<< orphan*/  FUNC4 (struct atmel_i2c_work_data*) ; 
 struct atmel_i2c_work_data* FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct kpp_request*,int /*<<< orphan*/ ) ; 
 struct atmel_ecdh_ctx* FUNC7 (struct crypto_kpp*) ; 

__attribute__((used)) static int FUNC8(struct kpp_request *req)
{
	struct crypto_kpp *tfm = FUNC3(req);
	struct atmel_ecdh_ctx *ctx = FUNC7(tfm);
	struct atmel_i2c_work_data *work_data;
	gfp_t gfp;
	int ret;

	if (ctx->do_fallback) {
		FUNC6(req, ctx->fallback);
		return FUNC2(req);
	}

	/* must have exactly two points to be on the curve */
	if (req->src_len != ATMEL_ECC_PUBKEY_SIZE)
		return -EINVAL;

	gfp = (req->base.flags & CRYPTO_TFM_REQ_MAY_SLEEP) ? GFP_KERNEL :
							     GFP_ATOMIC;

	work_data = FUNC5(sizeof(*work_data), gfp);
	if (!work_data)
		return -ENOMEM;

	work_data->ctx = ctx;
	work_data->client = ctx->client;

	ret = FUNC1(&work_data->cmd, req->src);
	if (ret)
		goto free_work_data;

	FUNC0(work_data, atmel_ecdh_done, req);

	return -EINPROGRESS;

free_work_data:
	FUNC4(work_data);
	return ret;
}