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
struct p8_ghash_desc_ctx {int bytes; scalar_t__ buffer; } ;
struct p8_ghash_ctx {int dummy; } ;

/* Variables and functions */
 unsigned int GHASH_DIGEST_SIZE ; 
 int /*<<< orphan*/  FUNC0 (struct p8_ghash_ctx*,struct p8_ghash_desc_ctx*) ; 
 int /*<<< orphan*/  FUNC1 (struct p8_ghash_ctx*,struct p8_ghash_desc_ctx*,int /*<<< orphan*/  const*,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct p8_ghash_ctx* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,int /*<<< orphan*/  const*,unsigned int) ; 
 struct p8_ghash_desc_ctx* FUNC5 (struct shash_desc*) ; 

__attribute__((used)) static int FUNC6(struct shash_desc *desc,
			   const u8 *src, unsigned int srclen)
{
	unsigned int len;
	struct p8_ghash_ctx *ctx = FUNC3(FUNC2(desc->tfm));
	struct p8_ghash_desc_ctx *dctx = FUNC5(desc);

	if (dctx->bytes) {
		if (dctx->bytes + srclen < GHASH_DIGEST_SIZE) {
			FUNC4(dctx->buffer + dctx->bytes, src,
				srclen);
			dctx->bytes += srclen;
			return 0;
		}
		FUNC4(dctx->buffer + dctx->bytes, src,
			GHASH_DIGEST_SIZE - dctx->bytes);

		FUNC0(ctx, dctx);

		src += GHASH_DIGEST_SIZE - dctx->bytes;
		srclen -= GHASH_DIGEST_SIZE - dctx->bytes;
		dctx->bytes = 0;
	}
	len = srclen & ~(GHASH_DIGEST_SIZE - 1);
	if (len) {
		FUNC1(ctx, dctx, src, len);
		src += len;
		srclen -= len;
	}
	if (srclen) {
		FUNC4(dctx->buffer, src, srclen);
		dctx->bytes = srclen;
	}
	return 0;
}