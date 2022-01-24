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
typedef  int /*<<< orphan*/  u64 ;
struct mv_cesa_ahash_req {unsigned int cache_ptr; int /*<<< orphan*/  cache; int /*<<< orphan*/  state; int /*<<< orphan*/  len; } ;
struct crypto_ahash {int dummy; } ;
struct ahash_request {int dummy; } ;

/* Variables and functions */
 struct mv_cesa_ahash_req* FUNC0 (struct ahash_request*) ; 
 unsigned int FUNC1 (struct crypto_ahash*) ; 
 unsigned int FUNC2 (struct crypto_ahash*) ; 
 struct crypto_ahash* FUNC3 (struct ahash_request*) ; 
 int /*<<< orphan*/  FUNC4 (void*,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (void*,int /*<<< orphan*/ ,unsigned int) ; 

__attribute__((used)) static int FUNC6(struct ahash_request *req, void *hash,
				u64 *len, void *cache)
{
	struct crypto_ahash *ahash = FUNC3(req);
	struct mv_cesa_ahash_req *creq = FUNC0(req);
	unsigned int digsize = FUNC2(ahash);
	unsigned int blocksize;

	blocksize = FUNC1(ahash);

	*len = creq->len;
	FUNC4(hash, creq->state, digsize);
	FUNC5(cache, 0, blocksize);
	FUNC4(cache, creq->cache, creq->cache_ptr);

	return 0;
}