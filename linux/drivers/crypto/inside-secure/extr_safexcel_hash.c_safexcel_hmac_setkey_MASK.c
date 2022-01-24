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
struct crypto_ahash {int dummy; } ;
struct ahash_request {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (struct crypto_ahash*) ; 
 int FUNC1 (struct crypto_ahash*) ; 
 struct ahash_request* FUNC2 (struct crypto_ahash*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ahash_request*) ; 
 int /*<<< orphan*/  FUNC4 (struct crypto_ahash*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct crypto_ahash*) ; 
 struct crypto_ahash* FUNC6 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct crypto_ahash*) ; 
 unsigned int FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC9 (int,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int FUNC11 (struct ahash_request*,unsigned int,int /*<<< orphan*/ *,void*) ; 
 int FUNC12 (struct ahash_request*,unsigned int,int /*<<< orphan*/  const*,unsigned int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

int FUNC13(const char *alg, const u8 *key, unsigned int keylen,
			 void *istate, void *ostate)
{
	struct ahash_request *areq;
	struct crypto_ahash *tfm;
	unsigned int blocksize;
	u8 *ipad, *opad;
	int ret;

	tfm = FUNC6(alg, 0, 0);
	if (FUNC0(tfm))
		return FUNC1(tfm);

	areq = FUNC2(tfm, GFP_KERNEL);
	if (!areq) {
		ret = -ENOMEM;
		goto free_ahash;
	}

	FUNC4(tfm, ~0);
	blocksize = FUNC8(FUNC5(tfm));

	ipad = FUNC9(2, blocksize, GFP_KERNEL);
	if (!ipad) {
		ret = -ENOMEM;
		goto free_request;
	}

	opad = ipad + blocksize;

	ret = FUNC12(areq, blocksize, key, keylen, ipad, opad);
	if (ret)
		goto free_ipad;

	ret = FUNC11(areq, blocksize, ipad, istate);
	if (ret)
		goto free_ipad;

	ret = FUNC11(areq, blocksize, opad, ostate);

free_ipad:
	FUNC10(ipad);
free_request:
	FUNC3(areq);
free_ahash:
	FUNC7(tfm);

	return ret;
}