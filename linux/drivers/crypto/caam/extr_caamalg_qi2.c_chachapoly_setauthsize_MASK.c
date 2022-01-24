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
 int EINVAL ; 
 unsigned int POLY1305_DIGEST_SIZE ; 
 int FUNC0 (struct crypto_aead*) ; 
 struct caam_ctx* FUNC1 (struct crypto_aead*) ; 

__attribute__((used)) static int FUNC2(struct crypto_aead *aead,
				  unsigned int authsize)
{
	struct caam_ctx *ctx = FUNC1(aead);

	if (authsize != POLY1305_DIGEST_SIZE)
		return -EINVAL;

	ctx->authsize = authsize;
	return FUNC0(aead);
}