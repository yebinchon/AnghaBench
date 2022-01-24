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
typedef  scalar_t__ u32 ;
struct rk_crypto_info {scalar_t__ reg; int /*<<< orphan*/  async_req; } ;
struct rk_cipher_ctx {int mode; scalar_t__ keylen; } ;
struct crypto_tfm {int dummy; } ;
struct crypto_ablkcipher {int dummy; } ;
struct ablkcipher_request {int /*<<< orphan*/  info; } ;

/* Variables and functions */
 scalar_t__ AES_KEYSIZE_192 ; 
 scalar_t__ AES_KEYSIZE_256 ; 
 int /*<<< orphan*/  FUNC0 (struct rk_crypto_info*,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ DES_BLOCK_SIZE ; 
 int RK_CRYPTO_AES_192BIT_key ; 
 int RK_CRYPTO_AES_256BIT_key ; 
 int RK_CRYPTO_AES_BYTESWAP_IV ; 
 int RK_CRYPTO_AES_BYTESWAP_KEY ; 
 int /*<<< orphan*/  RK_CRYPTO_AES_CTRL ; 
 int RK_CRYPTO_AES_FIFO_MODE ; 
 scalar_t__ RK_CRYPTO_AES_IV_0 ; 
 int RK_CRYPTO_AES_KEY_CHANGE ; 
 scalar_t__ RK_CRYPTO_BCDMA_DONE_ENA ; 
 scalar_t__ RK_CRYPTO_BCDMA_ERR_ENA ; 
 scalar_t__ RK_CRYPTO_BYTESWAP_BRFIFO ; 
 scalar_t__ RK_CRYPTO_BYTESWAP_BTFIFO ; 
 int /*<<< orphan*/  RK_CRYPTO_CONF ; 
 scalar_t__ RK_CRYPTO_DESSEL ; 
 int /*<<< orphan*/  RK_CRYPTO_INTENA ; 
 int RK_CRYPTO_TDES_BYTESWAP_IV ; 
 int RK_CRYPTO_TDES_BYTESWAP_KEY ; 
 int /*<<< orphan*/  RK_CRYPTO_TDES_CTRL ; 
 int RK_CRYPTO_TDES_FIFO_MODE ; 
 scalar_t__ RK_CRYPTO_TDES_IV_0 ; 
 struct ablkcipher_request* FUNC1 (int /*<<< orphan*/ ) ; 
 struct rk_cipher_ctx* FUNC2 (struct crypto_ablkcipher*) ; 
 scalar_t__ FUNC3 (struct crypto_ablkcipher*) ; 
 struct crypto_ablkcipher* FUNC4 (struct ablkcipher_request*) ; 
 struct crypto_tfm* FUNC5 (struct crypto_ablkcipher*) ; 
 scalar_t__ FUNC6 (struct crypto_tfm*) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC8(struct rk_crypto_info *dev)
{
	struct ablkcipher_request *req =
		FUNC1(dev->async_req);
	struct crypto_ablkcipher *cipher = FUNC4(req);
	struct crypto_tfm *tfm = FUNC5(cipher);
	struct rk_cipher_ctx *ctx = FUNC2(cipher);
	u32 ivsize, block, conf_reg = 0;

	block = FUNC6(tfm);
	ivsize = FUNC3(cipher);

	if (block == DES_BLOCK_SIZE) {
		ctx->mode |= RK_CRYPTO_TDES_FIFO_MODE |
			     RK_CRYPTO_TDES_BYTESWAP_KEY |
			     RK_CRYPTO_TDES_BYTESWAP_IV;
		FUNC0(dev, RK_CRYPTO_TDES_CTRL, ctx->mode);
		FUNC7(dev->reg + RK_CRYPTO_TDES_IV_0, req->info, ivsize);
		conf_reg = RK_CRYPTO_DESSEL;
	} else {
		ctx->mode |= RK_CRYPTO_AES_FIFO_MODE |
			     RK_CRYPTO_AES_KEY_CHANGE |
			     RK_CRYPTO_AES_BYTESWAP_KEY |
			     RK_CRYPTO_AES_BYTESWAP_IV;
		if (ctx->keylen == AES_KEYSIZE_192)
			ctx->mode |= RK_CRYPTO_AES_192BIT_key;
		else if (ctx->keylen == AES_KEYSIZE_256)
			ctx->mode |= RK_CRYPTO_AES_256BIT_key;
		FUNC0(dev, RK_CRYPTO_AES_CTRL, ctx->mode);
		FUNC7(dev->reg + RK_CRYPTO_AES_IV_0, req->info, ivsize);
	}
	conf_reg |= RK_CRYPTO_BYTESWAP_BTFIFO |
		    RK_CRYPTO_BYTESWAP_BRFIFO;
	FUNC0(dev, RK_CRYPTO_CONF, conf_reg);
	FUNC0(dev, RK_CRYPTO_INTENA,
		     RK_CRYPTO_BCDMA_ERR_ENA | RK_CRYPTO_BCDMA_DONE_ENA);
}