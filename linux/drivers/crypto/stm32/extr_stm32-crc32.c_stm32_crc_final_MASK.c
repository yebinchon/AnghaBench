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
typedef  int /*<<< orphan*/  u8 ;
struct stm32_crc_desc_ctx {int /*<<< orphan*/  partial; } ;
struct stm32_crc_ctx {scalar_t__ poly; } ;
struct shash_desc {int /*<<< orphan*/  tfm; } ;

/* Variables and functions */
 scalar_t__ CRC32C_POLY_LE ; 
 struct stm32_crc_ctx* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct stm32_crc_desc_ctx* FUNC2 (struct shash_desc*) ; 

__attribute__((used)) static int FUNC3(struct shash_desc *desc, u8 *out)
{
	struct stm32_crc_desc_ctx *ctx = FUNC2(desc);
	struct stm32_crc_ctx *mctx = FUNC0(desc->tfm);

	/* Send computed CRC */
	FUNC1(mctx->poly == CRC32C_POLY_LE ?
			   ~ctx->partial : ctx->partial, out);

	return 0;
}