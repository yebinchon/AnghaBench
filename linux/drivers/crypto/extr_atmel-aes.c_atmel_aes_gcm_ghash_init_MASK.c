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
struct atmel_aes_gcm_ctx {scalar_t__ ghash_in; } ;
struct atmel_aes_dev {int /*<<< orphan*/  total; int /*<<< orphan*/  ctx; } ;

/* Variables and functions */
 int /*<<< orphan*/  AES_AADLENR ; 
 int /*<<< orphan*/  AES_CLENR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct atmel_aes_gcm_ctx* FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct atmel_aes_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct atmel_aes_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct atmel_aes_dev*,int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int FUNC5(struct atmel_aes_dev *dd)
{
	struct atmel_aes_gcm_ctx *ctx = FUNC1(dd->ctx);

	/* Set the data length. */
	FUNC3(dd, AES_AADLENR, dd->total);
	FUNC3(dd, AES_CLENR, 0);

	/* If needed, overwrite the GCM Intermediate Hash Word Registers */
	if (ctx->ghash_in)
		FUNC4(dd, FUNC0(0), ctx->ghash_in);

	return FUNC2(dd);
}