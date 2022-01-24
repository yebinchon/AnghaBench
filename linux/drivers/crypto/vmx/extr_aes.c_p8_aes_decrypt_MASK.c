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
struct p8_aes_ctx {int /*<<< orphan*/  dec_key; int /*<<< orphan*/  fallback; } ;
struct crypto_tfm {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 struct p8_aes_ctx* FUNC3 (struct crypto_tfm*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 

__attribute__((used)) static void FUNC10(struct crypto_tfm *tfm, u8 *dst, const u8 *src)
{
	struct p8_aes_ctx *ctx = FUNC3(tfm);

	if (!FUNC2()) {
		FUNC1(ctx->fallback, dst, src);
	} else {
		FUNC8();
		FUNC6();
		FUNC5();
		FUNC0(src, dst, &ctx->dec_key);
		FUNC4();
		FUNC7();
		FUNC9();
	}
}