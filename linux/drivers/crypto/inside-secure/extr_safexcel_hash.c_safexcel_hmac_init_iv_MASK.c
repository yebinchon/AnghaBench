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
struct safexcel_ahash_result {int error; int /*<<< orphan*/  completion; } ;
struct safexcel_ahash_req {int hmac; int last_req; } ;
struct ahash_request {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CRYPTO_TFM_REQ_MAY_BACKLOG ; 
 int EBUSY ; 
 int EINPROGRESS ; 
 struct safexcel_ahash_req* FUNC0 (struct ahash_request*) ; 
 int /*<<< orphan*/  FUNC1 (struct ahash_request*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct safexcel_ahash_result*) ; 
 int /*<<< orphan*/  FUNC2 (struct ahash_request*,struct scatterlist*,int /*<<< orphan*/ *,unsigned int) ; 
 int FUNC3 (struct ahash_request*,void*) ; 
 int FUNC4 (struct ahash_request*) ; 
 int FUNC5 (struct ahash_request*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  safexcel_ahash_complete ; 
 int /*<<< orphan*/  FUNC7 (struct scatterlist*,int /*<<< orphan*/ *,unsigned int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC9(struct ahash_request *areq,
				 unsigned int blocksize, u8 *pad, void *state)
{
	struct safexcel_ahash_result result;
	struct safexcel_ahash_req *req;
	struct scatterlist sg;
	int ret;

	FUNC1(areq, CRYPTO_TFM_REQ_MAY_BACKLOG,
				   safexcel_ahash_complete, &result);
	FUNC7(&sg, pad, blocksize);
	FUNC2(areq, &sg, pad, blocksize);
	FUNC6(&result.completion);

	ret = FUNC4(areq);
	if (ret)
		return ret;

	req = FUNC0(areq);
	req->hmac = true;
	req->last_req = true;

	ret = FUNC5(areq);
	if (ret && ret != -EINPROGRESS && ret != -EBUSY)
		return ret;

	FUNC8(&result.completion);
	if (result.error)
		return result.error;

	return FUNC3(areq, state);
}