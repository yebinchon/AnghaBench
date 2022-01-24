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
typedef  int u32 ;
struct atmel_aes_gcm_ctx {int (* ghash_resume ) (struct atmel_aes_dev*) ;int /*<<< orphan*/  ghash_out; } ;
struct atmel_aes_dev {scalar_t__ datalen; int data; int (* resume ) (struct atmel_aes_dev*) ;int /*<<< orphan*/  ctx; } ;

/* Variables and functions */
 scalar_t__ AES_BLOCK_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AES_IER ; 
 int AES_INT_DATARDY ; 
 int /*<<< orphan*/  AES_ISR ; 
 int EINPROGRESS ; 
 struct atmel_aes_gcm_ctx* FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (struct atmel_aes_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct atmel_aes_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct atmel_aes_dev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (struct atmel_aes_dev*,int /*<<< orphan*/ ,int) ; 
 int FUNC7 (struct atmel_aes_dev*) ; 

__attribute__((used)) static int FUNC8(struct atmel_aes_dev *dd)
{
	struct atmel_aes_gcm_ctx *ctx = FUNC2(dd->ctx);
	u32 isr;

	/* Write data into the Input Data Registers. */
	while (dd->datalen > 0) {
		FUNC6(dd, FUNC1(0), dd->data);
		dd->data += 4;
		dd->datalen -= AES_BLOCK_SIZE;

		isr = FUNC3(dd, AES_ISR);
		if (!(isr & AES_INT_DATARDY)) {
			dd->resume = atmel_aes_gcm_ghash_finalize;
			FUNC5(dd, AES_IER, AES_INT_DATARDY);
			return -EINPROGRESS;
		}
	}

	/* Read the computed hash from GHASHRx. */
	FUNC4(dd, FUNC0(0), ctx->ghash_out);

	return ctx->ghash_resume(dd);
}