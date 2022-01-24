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
struct safexcel_ahash_req {scalar_t__ needs_inv; } ;
struct crypto_async_request {int dummy; } ;
struct ahash_request {int dummy; } ;

/* Variables and functions */
 struct ahash_request* FUNC0 (struct crypto_async_request*) ; 
 struct safexcel_ahash_req* FUNC1 (struct ahash_request*) ; 
 int FUNC2 (struct crypto_async_request*,int,int*,int*) ; 
 int FUNC3 (struct crypto_async_request*,int,int*,int*) ; 

__attribute__((used)) static int FUNC4(struct crypto_async_request *async,
			       int ring, int *commands, int *results)
{
	struct ahash_request *areq = FUNC0(async);
	struct safexcel_ahash_req *req = FUNC1(areq);
	int ret;

	if (req->needs_inv)
		ret = FUNC2(async, ring, commands, results);
	else
		ret = FUNC3(async, ring, commands, results);

	return ret;
}