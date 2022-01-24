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
typedef  unsigned int u64 ;
struct mv_cesa_ahash_req {unsigned int len; unsigned int cache_ptr; int /*<<< orphan*/  cache; int /*<<< orphan*/  state; int /*<<< orphan*/  op_tmpl; } ;
struct crypto_ahash {int dummy; } ;
struct ahash_request {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CESA_SA_DESC_CFG_FRAG_MSK ; 
 int /*<<< orphan*/  CESA_SA_DESC_CFG_MID_FRAG ; 
 struct mv_cesa_ahash_req* FUNC0 (struct ahash_request*) ; 
 unsigned int FUNC1 (struct crypto_ahash*) ; 
 unsigned int FUNC2 (struct crypto_ahash*) ; 
 int FUNC3 (struct ahash_request*) ; 
 struct crypto_ahash* FUNC4 (struct ahash_request*) ; 
 unsigned int FUNC5 (unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,void const*,unsigned int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct ahash_request *req, const void *hash,
				u64 len, const void *cache)
{
	struct crypto_ahash *ahash = FUNC4(req);
	struct mv_cesa_ahash_req *creq = FUNC0(req);
	unsigned int digsize = FUNC2(ahash);
	unsigned int blocksize;
	unsigned int cache_ptr;
	int ret;

	ret = FUNC3(req);
	if (ret)
		return ret;

	blocksize = FUNC1(ahash);
	if (len >= blocksize)
		FUNC7(&creq->op_tmpl,
				      CESA_SA_DESC_CFG_MID_FRAG,
				      CESA_SA_DESC_CFG_FRAG_MSK);

	creq->len = len;
	FUNC6(creq->state, hash, digsize);
	creq->cache_ptr = 0;

	cache_ptr = FUNC5(len, blocksize);
	if (!cache_ptr)
		return 0;

	FUNC6(creq->cache, cache, cache_ptr);
	creq->cache_ptr = cache_ptr;

	return 0;
}