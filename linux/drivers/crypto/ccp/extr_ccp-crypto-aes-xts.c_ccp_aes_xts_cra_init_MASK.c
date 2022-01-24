#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int reqsize; } ;
struct crypto_tfm {TYPE_1__ crt_ablkcipher; } ;
struct crypto_sync_skcipher {int dummy; } ;
struct TYPE_5__ {struct crypto_sync_skcipher* tfm_skcipher; scalar_t__ key_len; } ;
struct TYPE_6__ {TYPE_2__ aes; } ;
struct ccp_ctx {TYPE_3__ u; int /*<<< orphan*/  complete; } ;
struct ccp_aes_req_ctx {int dummy; } ;

/* Variables and functions */
 int CRYPTO_ALG_ASYNC ; 
 int CRYPTO_ALG_NEED_FALLBACK ; 
 scalar_t__ FUNC0 (struct crypto_sync_skcipher*) ; 
 int FUNC1 (struct crypto_sync_skcipher*) ; 
 int /*<<< orphan*/  ccp_aes_xts_complete ; 
 struct crypto_sync_skcipher* FUNC2 (char*,int /*<<< orphan*/ ,int) ; 
 struct ccp_ctx* FUNC3 (struct crypto_tfm*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 

__attribute__((used)) static int FUNC5(struct crypto_tfm *tfm)
{
	struct ccp_ctx *ctx = FUNC3(tfm);
	struct crypto_sync_skcipher *fallback_tfm;

	ctx->complete = ccp_aes_xts_complete;
	ctx->u.aes.key_len = 0;

	fallback_tfm = FUNC2("xts(aes)", 0,
					     CRYPTO_ALG_ASYNC |
					     CRYPTO_ALG_NEED_FALLBACK);
	if (FUNC0(fallback_tfm)) {
		FUNC4("could not load fallback driver xts(aes)\n");
		return FUNC1(fallback_tfm);
	}
	ctx->u.aes.tfm_skcipher = fallback_tfm;

	tfm->crt_ablkcipher.reqsize = sizeof(struct ccp_aes_req_ctx);

	return 0;
}