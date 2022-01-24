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
typedef  int /*<<< orphan*/  u64 ;
typedef  int /*<<< orphan*/  u32 ;
struct atmel_aes_gcm_ctx {int textlen; int /*<<< orphan*/  ghash; } ;
struct atmel_aes_dev {int flags; int (* resume ) (struct atmel_aes_dev*) ;int /*<<< orphan*/ * buf; int /*<<< orphan*/  areq; int /*<<< orphan*/  ctx; } ;
struct aead_request {int assoclen; } ;

/* Variables and functions */
 int /*<<< orphan*/  AES_BLOCK_SIZE ; 
 int AES_FLAGS_GTAGEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AES_IER ; 
 int AES_INT_TAGRDY ; 
 int /*<<< orphan*/  AES_ISR ; 
 int EINPROGRESS ; 
 struct aead_request* FUNC1 (int /*<<< orphan*/ ) ; 
 struct atmel_aes_gcm_ctx* FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (struct atmel_aes_dev*) ; 
 int FUNC4 (struct atmel_aes_dev*,int /*<<< orphan*/  const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  atmel_aes_gcm_tag ; 
 int FUNC5 (struct atmel_aes_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct atmel_aes_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct atmel_aes_dev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 scalar_t__ FUNC9 (int) ; 

__attribute__((used)) static int FUNC10(struct atmel_aes_dev *dd)
{
	struct atmel_aes_gcm_ctx *ctx = FUNC2(dd->ctx);
	struct aead_request *req = FUNC1(dd->areq);
	u64 *data = dd->buf;

	if (FUNC9(dd->flags & AES_FLAGS_GTAGEN)) {
		if (!(FUNC5(dd, AES_ISR) & AES_INT_TAGRDY)) {
			dd->resume = atmel_aes_gcm_tag_init;
			FUNC7(dd, AES_IER, AES_INT_TAGRDY);
			return -EINPROGRESS;
		}

		return FUNC3(dd);
	}

	/* Read the GCM Intermediate Hash Word Registers. */
	FUNC6(dd, FUNC0(0), ctx->ghash);

	data[0] = FUNC8(req->assoclen * 8);
	data[1] = FUNC8(ctx->textlen * 8);

	return FUNC4(dd, (const u32 *)data, AES_BLOCK_SIZE,
				   ctx->ghash, ctx->ghash, atmel_aes_gcm_tag);
}