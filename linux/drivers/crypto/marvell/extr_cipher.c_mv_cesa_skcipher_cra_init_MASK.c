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
struct mv_cesa_skcipher_req {int dummy; } ;
struct mv_cesa_ctx {int /*<<< orphan*/ * ops; } ;
struct crypto_tfm {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct crypto_tfm*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 struct mv_cesa_ctx* FUNC2 (struct crypto_tfm*) ; 
 int /*<<< orphan*/  mv_cesa_skcipher_req_ops ; 

__attribute__((used)) static int FUNC3(struct crypto_tfm *tfm)
{
	struct mv_cesa_ctx *ctx = FUNC2(tfm);

	ctx->ops = &mv_cesa_skcipher_req_ops;

	FUNC1(FUNC0(tfm),
				    sizeof(struct mv_cesa_skcipher_req));

	return 0;
}