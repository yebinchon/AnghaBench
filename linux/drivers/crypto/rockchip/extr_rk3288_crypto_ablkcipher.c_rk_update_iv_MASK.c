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
typedef  int /*<<< orphan*/  u32 ;
struct rk_crypto_info {scalar_t__ reg; TYPE_1__* sg_dst; int /*<<< orphan*/  async_req; } ;
struct rk_cipher_ctx {int mode; int /*<<< orphan*/ * iv; } ;
struct crypto_ablkcipher {int dummy; } ;
struct ablkcipher_request {int dummy; } ;
struct TYPE_2__ {int offset; int length; } ;

/* Variables and functions */
 int /*<<< orphan*/  AES_BLOCK_SIZE ; 
 int /*<<< orphan*/  DES_BLOCK_SIZE ; 
 scalar_t__ RK_CRYPTO_AES_IV_0 ; 
 int RK_CRYPTO_DEC ; 
 scalar_t__ RK_CRYPTO_TDES_IV_0 ; 
 struct ablkcipher_request* FUNC0 (int /*<<< orphan*/ ) ; 
 struct rk_cipher_ctx* FUNC1 (struct crypto_ablkcipher*) ; 
 int /*<<< orphan*/  FUNC2 (struct crypto_ablkcipher*) ; 
 struct crypto_ablkcipher* FUNC3 (struct ablkcipher_request*) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 

__attribute__((used)) static void FUNC7(struct rk_crypto_info *dev)
{
	struct ablkcipher_request *req =
		FUNC0(dev->async_req);
	struct crypto_ablkcipher *tfm = FUNC3(req);
	struct rk_cipher_ctx *ctx = FUNC1(tfm);
	u32 ivsize = FUNC2(tfm);
	u8 *new_iv = NULL;

	if (ctx->mode & RK_CRYPTO_DEC) {
		new_iv = ctx->iv;
	} else {
		new_iv = FUNC5(FUNC6(dev->sg_dst)) +
			 dev->sg_dst->offset + dev->sg_dst->length - ivsize;
	}

	if (ivsize == DES_BLOCK_SIZE)
		FUNC4(dev->reg + RK_CRYPTO_TDES_IV_0, new_iv, ivsize);
	else if (ivsize == AES_BLOCK_SIZE)
		FUNC4(dev->reg + RK_CRYPTO_AES_IV_0, new_iv, ivsize);
}