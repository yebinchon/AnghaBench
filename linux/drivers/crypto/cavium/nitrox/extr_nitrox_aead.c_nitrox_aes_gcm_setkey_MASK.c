#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int aes_keylen; } ;
union fc_ctx_flags {int /*<<< orphan*/  f; TYPE_2__ w0; } ;
typedef  int /*<<< orphan*/  u8 ;
struct TYPE_6__ {struct flexi_crypto_context* fctx; } ;
struct nitrox_crypto_ctx {TYPE_1__ u; } ;
struct TYPE_9__ {int /*<<< orphan*/  key; } ;
struct TYPE_10__ {TYPE_4__ u; } ;
struct TYPE_8__ {int /*<<< orphan*/  f; } ;
struct flexi_crypto_context {TYPE_5__ crypto; TYPE_3__ flags; } ;
struct crypto_aead {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CRYPTO_TFM_RES_BAD_KEY_LEN ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct nitrox_crypto_ctx* FUNC2 (struct crypto_aead*) ; 
 int /*<<< orphan*/  FUNC3 (struct crypto_aead*,int /*<<< orphan*/ ) ; 
 int FUNC4 (unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_5__*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC7(struct crypto_aead *aead, const u8 *key,
				 unsigned int keylen)
{
	int aes_keylen;
	struct nitrox_crypto_ctx *nctx = FUNC2(aead);
	struct flexi_crypto_context *fctx;
	union fc_ctx_flags flags;

	aes_keylen = FUNC4(keylen);
	if (aes_keylen < 0) {
		FUNC3(aead, CRYPTO_TFM_RES_BAD_KEY_LEN);
		return -EINVAL;
	}

	/* fill crypto context */
	fctx = nctx->u.fctx;
	flags.f = FUNC0(fctx->flags.f);
	flags.w0.aes_keylen = aes_keylen;
	fctx->flags.f = FUNC1(flags.f);

	/* copy enc key to context */
	FUNC6(&fctx->crypto, 0, sizeof(fctx->crypto));
	FUNC5(fctx->crypto.u.key, key, keylen);

	return 0;
}