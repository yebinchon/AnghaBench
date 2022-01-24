#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct rk_crypto_info {int total; int (* load_data ) (struct rk_crypto_info*,TYPE_1__*,int /*<<< orphan*/ ) ;int /*<<< orphan*/  sg_dst; TYPE_1__* sg_src; int /*<<< orphan*/  src_nents; int /*<<< orphan*/  first; int /*<<< orphan*/  async_req; } ;
struct rk_cipher_ctx {int mode; int /*<<< orphan*/  iv; } ;
struct crypto_ablkcipher {int dummy; } ;
struct ablkcipher_request {int /*<<< orphan*/  info; } ;
struct TYPE_3__ {int offset; int length; } ;

/* Variables and functions */
 int RK_CRYPTO_DEC ; 
 struct ablkcipher_request* FUNC0 (int /*<<< orphan*/ ) ; 
 struct rk_cipher_ctx* FUNC1 (struct crypto_ablkcipher*) ; 
 int /*<<< orphan*/  FUNC2 (struct crypto_ablkcipher*) ; 
 struct crypto_ablkcipher* FUNC3 (struct ablkcipher_request*) ; 
 int /*<<< orphan*/  FUNC4 (struct rk_crypto_info*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC9 (struct rk_crypto_info*,TYPE_1__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC10(struct rk_crypto_info *dev)
{
	int err;
	struct ablkcipher_request *req =
		FUNC0(dev->async_req);
	struct crypto_ablkcipher *tfm = FUNC3(req);
	struct rk_cipher_ctx *ctx = FUNC1(tfm);
	u32 ivsize = FUNC2(tfm);
	u8 *src_last_blk = FUNC6(FUNC7(dev->sg_src)) +
		dev->sg_src->offset + dev->sg_src->length - ivsize;

	/* Store the iv that need to be updated in chain mode.
	 * And update the IV buffer to contain the next IV for decryption mode.
	 */
	if (ctx->mode & RK_CRYPTO_DEC) {
		FUNC5(ctx->iv, src_last_blk, ivsize);
		FUNC8(dev->first, dev->src_nents, req->info,
				   ivsize, dev->total - ivsize);
	}

	err = dev->load_data(dev, dev->sg_src, dev->sg_dst);
	if (!err)
		FUNC4(dev);
	return err;
}