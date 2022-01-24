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
struct p8_ghash_desc_ctx {scalar_t__ shash; } ;
struct p8_ghash_ctx {int /*<<< orphan*/  key; int /*<<< orphan*/  htable; } ;
typedef  int /*<<< orphan*/  be128 ;

/* Variables and functions */
 unsigned int GHASH_BLOCK_SIZE ; 
 scalar_t__ FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/  const*,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 

__attribute__((used)) static inline void FUNC10(struct p8_ghash_ctx *ctx,
				  struct p8_ghash_desc_ctx *dctx,
				  const u8 *src, unsigned int srclen)
{
	if (FUNC0()) {
		FUNC8();
		FUNC6();
		FUNC3();
		FUNC4(dctx->shash, ctx->htable,
				src, srclen);
		FUNC2();
		FUNC7();
		FUNC9();
	} else {
		while (srclen >= GHASH_BLOCK_SIZE) {
			FUNC1((u8 *)dctx->shash, src, GHASH_BLOCK_SIZE);
			FUNC5((be128 *)dctx->shash, &ctx->key);
			srclen -= GHASH_BLOCK_SIZE;
			src += GHASH_BLOCK_SIZE;
		}
	}
}