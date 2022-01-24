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
struct dcp_async_ctx {unsigned int key_len; int /*<<< orphan*/  fallback; int /*<<< orphan*/  key; } ;
struct TYPE_2__ {int crt_flags; } ;
struct crypto_ablkcipher {TYPE_1__ base; } ;

/* Variables and functions */
 unsigned int AES_KEYSIZE_128 ; 
 int CRYPTO_TFM_REQ_MASK ; 
 int CRYPTO_TFM_RES_MASK ; 
 struct dcp_async_ctx* FUNC0 (struct crypto_ablkcipher*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 unsigned int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,unsigned int) ; 

__attribute__((used)) static int FUNC6(struct crypto_ablkcipher *tfm, const u8 *key,
			      unsigned int len)
{
	struct dcp_async_ctx *actx = FUNC0(tfm);
	unsigned int ret;

	/*
	 * AES 128 is supposed by the hardware, store key into temporary
	 * buffer and exit. We must use the temporary buffer here, since
	 * there can still be an operation in progress.
	 */
	actx->key_len = len;
	if (len == AES_KEYSIZE_128) {
		FUNC5(actx->key, key, len);
		return 0;
	}

	/*
	 * If the requested AES key size is not supported by the hardware,
	 * but is supported by in-kernel software implementation, we use
	 * software fallback.
	 */
	FUNC1(actx->fallback, CRYPTO_TFM_REQ_MASK);
	FUNC3(actx->fallback,
				  tfm->base.crt_flags & CRYPTO_TFM_REQ_MASK);

	ret = FUNC4(actx->fallback, key, len);
	if (!ret)
		return 0;

	tfm->base.crt_flags &= ~CRYPTO_TFM_RES_MASK;
	tfm->base.crt_flags |= FUNC2(actx->fallback) &
			       CRYPTO_TFM_RES_MASK;

	return ret;
}