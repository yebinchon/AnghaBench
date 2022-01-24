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
typedef  scalar_t__ u32 ;
struct rk_crypto_info {scalar_t__ count; scalar_t__ addr_vir; TYPE_1__* sg_dst; scalar_t__ aligned; int /*<<< orphan*/  async_req; } ;
struct rk_cipher_ctx {int mode; } ;
struct crypto_ablkcipher {int dummy; } ;
struct ablkcipher_request {int /*<<< orphan*/  info; } ;
struct TYPE_2__ {scalar_t__ length; } ;

/* Variables and functions */
 int RK_CRYPTO_DEC ; 
 struct ablkcipher_request* FUNC0 (int /*<<< orphan*/ ) ; 
 struct rk_cipher_ctx* FUNC1 (struct crypto_ablkcipher*) ; 
 scalar_t__ FUNC2 (struct crypto_ablkcipher*) ; 
 struct crypto_ablkcipher* FUNC3 (struct ablkcipher_request*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC5 (TYPE_1__*) ; 

__attribute__((used)) static void FUNC6(struct rk_crypto_info *dev)
{
	struct ablkcipher_request *req =
		FUNC0(dev->async_req);
	struct crypto_ablkcipher *tfm = FUNC3(req);
	struct rk_cipher_ctx *ctx = FUNC1(tfm);
	u32 ivsize = FUNC2(tfm);

	/* Update the IV buffer to contain the next IV for encryption mode. */
	if (!(ctx->mode & RK_CRYPTO_DEC)) {
		if (dev->aligned) {
			FUNC4(req->info, FUNC5(dev->sg_dst) +
				dev->sg_dst->length - ivsize, ivsize);
		} else {
			FUNC4(req->info, dev->addr_vir +
				dev->count - ivsize, ivsize);
		}
	}
}