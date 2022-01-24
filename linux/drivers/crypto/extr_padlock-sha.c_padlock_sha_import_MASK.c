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
struct shash_desc {int /*<<< orphan*/  tfm; } ;
struct TYPE_2__ {int /*<<< orphan*/  tfm; } ;
struct padlock_sha_desc {TYPE_1__ fallback; } ;
struct padlock_sha_ctx {int /*<<< orphan*/  fallback; } ;

/* Variables and functions */
 struct padlock_sha_ctx* FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (TYPE_1__*,void const*) ; 
 struct padlock_sha_desc* FUNC2 (struct shash_desc*) ; 

__attribute__((used)) static int FUNC3(struct shash_desc *desc, const void *in)
{
	struct padlock_sha_desc *dctx = FUNC2(desc);
	struct padlock_sha_ctx *ctx = FUNC0(desc->tfm);

	dctx->fallback.tfm = ctx->fallback;
	return FUNC1(&dctx->fallback, in);
}