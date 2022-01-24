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
struct atmel_aes_gcm_ctx {int /*<<< orphan*/  ghash; int /*<<< orphan*/  j0; } ;
struct atmel_aes_dev {unsigned long flags; int /*<<< orphan*/  ctx; } ;

/* Variables and functions */
 int AES_FLAGS_CTR ; 
 int AES_FLAGS_GTAGEN ; 
 int AES_FLAGS_OPMODE_MASK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct atmel_aes_gcm_ctx* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  atmel_aes_gcm_finalize ; 
 int FUNC2 (struct atmel_aes_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct atmel_aes_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct atmel_aes_dev*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct atmel_aes_dev *dd)
{
	struct atmel_aes_gcm_ctx *ctx = FUNC1(dd->ctx);
	unsigned long flags;

	/*
	 * Change mode to CTR to complete the tag generation.
	 * Use J0 as Initialization Vector.
	 */
	flags = dd->flags;
	dd->flags &= ~(AES_FLAGS_OPMODE_MASK | AES_FLAGS_GTAGEN);
	dd->flags |= AES_FLAGS_CTR;
	FUNC4(dd, false, ctx->j0);
	dd->flags = flags;

	FUNC3(dd, FUNC0(0), ctx->ghash);
	return FUNC2(dd, atmel_aes_gcm_finalize);
}