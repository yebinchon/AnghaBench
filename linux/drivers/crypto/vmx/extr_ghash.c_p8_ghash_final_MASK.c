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
struct shash_desc {int /*<<< orphan*/  tfm; } ;
struct p8_ghash_desc_ctx {int bytes; int /*<<< orphan*/  shash; scalar_t__* buffer; } ;
struct p8_ghash_ctx {int dummy; } ;

/* Variables and functions */
 int GHASH_DIGEST_SIZE ; 
 int /*<<< orphan*/  FUNC0 (struct p8_ghash_ctx*,struct p8_ghash_desc_ctx*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct p8_ghash_ctx* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 struct p8_ghash_desc_ctx* FUNC4 (struct shash_desc*) ; 

__attribute__((used)) static int FUNC5(struct shash_desc *desc, u8 *out)
{
	int i;
	struct p8_ghash_ctx *ctx = FUNC2(FUNC1(desc->tfm));
	struct p8_ghash_desc_ctx *dctx = FUNC4(desc);

	if (dctx->bytes) {
		for (i = dctx->bytes; i < GHASH_DIGEST_SIZE; i++)
			dctx->buffer[i] = 0;
		FUNC0(ctx, dctx);
		dctx->bytes = 0;
	}
	FUNC3(out, dctx->shash, GHASH_DIGEST_SIZE);
	return 0;
}