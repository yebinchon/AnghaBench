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
struct device {int dummy; } ;
struct crypto_aead {int dummy; } ;
struct cc_aead_ctx {unsigned int authsize; int /*<<< orphan*/  drvdata; } ;

/* Variables and functions */
 int ENOTSUPP ; 
 struct cc_aead_ctx* FUNC0 (struct crypto_aead*) ; 
 unsigned int FUNC1 (struct crypto_aead*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*,unsigned int) ; 
 struct device* FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct crypto_aead *authenc,
			       unsigned int authsize)
{
	struct cc_aead_ctx *ctx = FUNC0(authenc);
	struct device *dev = FUNC3(ctx->drvdata);

	/* Unsupported auth. sizes */
	if (authsize == 0 ||
	    authsize > FUNC1(authenc)) {
		return -ENOTSUPP;
	}

	ctx->authsize = authsize;
	FUNC2(dev, "authlen=%d\n", ctx->authsize);

	return 0;
}