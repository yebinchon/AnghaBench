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
struct scatterlist {int dummy; } ;
struct mv_cesa_ahash_result {int error; int /*<<< orphan*/  completion; } ;
struct ahash_request {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CRYPTO_TFM_REQ_MAY_BACKLOG ; 
 int EINPROGRESS ; 
 int /*<<< orphan*/  FUNC0 (struct ahash_request*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct mv_cesa_ahash_result*) ; 
 int /*<<< orphan*/  FUNC1 (struct ahash_request*,struct scatterlist*,int /*<<< orphan*/ *,unsigned int) ; 
 int FUNC2 (struct ahash_request*,void*) ; 
 int FUNC3 (struct ahash_request*) ; 
 int FUNC4 (struct ahash_request*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  mv_cesa_hmac_ahash_complete ; 
 int /*<<< orphan*/  FUNC6 (struct scatterlist*,int /*<<< orphan*/ *,unsigned int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(struct ahash_request *req, u8 *pad,
				       void *state, unsigned int blocksize)
{
	struct mv_cesa_ahash_result result;
	struct scatterlist sg;
	int ret;

	FUNC0(req, CRYPTO_TFM_REQ_MAY_BACKLOG,
				   mv_cesa_hmac_ahash_complete, &result);
	FUNC6(&sg, pad, blocksize);
	FUNC1(req, &sg, pad, blocksize);
	FUNC5(&result.completion);

	ret = FUNC3(req);
	if (ret)
		return ret;

	ret = FUNC4(req);
	if (ret && ret != -EINPROGRESS)
		return ret;

	FUNC7(&result.completion);
	if (result.error)
		return result.error;

	ret = FUNC2(req, state);
	if (ret)
		return ret;

	return 0;
}