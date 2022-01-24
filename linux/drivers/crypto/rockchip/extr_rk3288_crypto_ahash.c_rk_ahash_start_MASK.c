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
struct rk_crypto_info {int align_size; int /*<<< orphan*/  src_nents; int /*<<< orphan*/  first; int /*<<< orphan*/  sg_src; int /*<<< orphan*/ * sg_dst; scalar_t__ aligned; int /*<<< orphan*/  left_bytes; int /*<<< orphan*/  total; int /*<<< orphan*/  async_req; } ;
struct rk_ahash_rctx {scalar_t__ mode; } ;
struct crypto_ahash {int dummy; } ;
struct ahash_request {int /*<<< orphan*/  src; int /*<<< orphan*/  nbytes; } ;

/* Variables and functions */
 int EINVAL ; 
#define  MD5_DIGEST_SIZE 130 
 scalar_t__ RK_CRYPTO_HASH_MD5 ; 
 scalar_t__ RK_CRYPTO_HASH_SHA1 ; 
 scalar_t__ RK_CRYPTO_HASH_SHA256 ; 
#define  SHA1_DIGEST_SIZE 129 
#define  SHA256_DIGEST_SIZE 128 
 struct ahash_request* FUNC0 (int /*<<< orphan*/ ) ; 
 struct rk_ahash_rctx* FUNC1 (struct ahash_request*) ; 
 int FUNC2 (struct crypto_ahash*) ; 
 struct crypto_ahash* FUNC3 (struct ahash_request*) ; 
 int /*<<< orphan*/  FUNC4 (struct rk_crypto_info*) ; 
 int FUNC5 (struct rk_crypto_info*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct rk_crypto_info *dev)
{
	struct ahash_request *req = FUNC0(dev->async_req);
	struct crypto_ahash *tfm;
	struct rk_ahash_rctx *rctx;

	dev->total = req->nbytes;
	dev->left_bytes = req->nbytes;
	dev->aligned = 0;
	dev->align_size = 4;
	dev->sg_dst = NULL;
	dev->sg_src = req->src;
	dev->first = req->src;
	dev->src_nents = FUNC6(req->src);
	rctx = FUNC1(req);
	rctx->mode = 0;

	tfm = FUNC3(req);
	switch (FUNC2(tfm)) {
	case SHA1_DIGEST_SIZE:
		rctx->mode = RK_CRYPTO_HASH_SHA1;
		break;
	case SHA256_DIGEST_SIZE:
		rctx->mode = RK_CRYPTO_HASH_SHA256;
		break;
	case MD5_DIGEST_SIZE:
		rctx->mode = RK_CRYPTO_HASH_MD5;
		break;
	default:
		return -EINVAL;
	}

	FUNC4(dev);
	return FUNC5(dev);
}