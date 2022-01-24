#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct crypto_tfm {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  encrypt; int /*<<< orphan*/  decrypt; } ;
struct aes_ctx {TYPE_1__ cword; int /*<<< orphan*/  D; } ;

/* Variables and functions */
 struct aes_ctx* FUNC0 (struct crypto_tfm*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  const*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct crypto_tfm *tfm, u8 *out, const u8 *in)
{
	struct aes_ctx *ctx = FUNC0(tfm);

	FUNC2(&ctx->cword.encrypt);
	FUNC1(in, out, ctx->D, &ctx->cword.decrypt, 1);
	FUNC3(&ctx->cword.encrypt);
}