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
struct dcp_async_ctx {struct crypto_sync_skcipher* fallback; } ;
struct dcp_aes_req_ctx {int dummy; } ;
struct TYPE_2__ {int reqsize; } ;
struct crypto_tfm {TYPE_1__ crt_ablkcipher; } ;
struct crypto_sync_skcipher {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CRYPTO_ALG_NEED_FALLBACK ; 
 scalar_t__ FUNC0 (struct crypto_sync_skcipher*) ; 
 int FUNC1 (struct crypto_sync_skcipher*) ; 
 struct crypto_sync_skcipher* FUNC2 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* FUNC3 (struct crypto_tfm*) ; 
 struct dcp_async_ctx* FUNC4 (struct crypto_tfm*) ; 

__attribute__((used)) static int FUNC5(struct crypto_tfm *tfm)
{
	const char *name = FUNC3(tfm);
	struct dcp_async_ctx *actx = FUNC4(tfm);
	struct crypto_sync_skcipher *blk;

	blk = FUNC2(name, 0, CRYPTO_ALG_NEED_FALLBACK);
	if (FUNC0(blk))
		return FUNC1(blk);

	actx->fallback = blk;
	tfm->crt_ablkcipher.reqsize = sizeof(struct dcp_aes_req_ctx);
	return 0;
}