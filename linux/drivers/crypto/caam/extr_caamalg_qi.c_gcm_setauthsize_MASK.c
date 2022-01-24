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
struct crypto_aead {int dummy; } ;
struct caam_ctx {unsigned int authsize; } ;

/* Variables and functions */
 struct caam_ctx* FUNC0 (struct crypto_aead*) ; 
 int FUNC1 (unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (struct crypto_aead*) ; 

__attribute__((used)) static int FUNC3(struct crypto_aead *authenc, unsigned int authsize)
{
	struct caam_ctx *ctx = FUNC0(authenc);
	int err;

	err = FUNC1(authsize);
	if (err)
		return err;

	ctx->authsize = authsize;
	FUNC2(authenc);

	return 0;
}