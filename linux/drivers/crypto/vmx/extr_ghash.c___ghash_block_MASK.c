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
struct p8_ghash_desc_ctx {scalar_t__ shash; int /*<<< orphan*/  buffer; } ;
struct p8_ghash_ctx {int /*<<< orphan*/  key; int /*<<< orphan*/  htable; } ;
typedef  int /*<<< orphan*/  be128 ;

/* Variables and functions */
 int /*<<< orphan*/  GHASH_BLOCK_SIZE ; 
 int /*<<< orphan*/  GHASH_DIGEST_SIZE ; 
 scalar_t__ FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 

__attribute__((used)) static inline void FUNC10(struct p8_ghash_ctx *ctx,
				 struct p8_ghash_desc_ctx *dctx)
{
	if (FUNC0()) {
		FUNC8();
		FUNC6();
		FUNC3();
		FUNC4(dctx->shash, ctx->htable,
				dctx->buffer, GHASH_DIGEST_SIZE);
		FUNC2();
		FUNC7();
		FUNC9();
	} else {
		FUNC1((u8 *)dctx->shash, dctx->buffer, GHASH_BLOCK_SIZE);
		FUNC5((be128 *)dctx->shash, &ctx->key);
	}
}