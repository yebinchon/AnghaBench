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
struct safexcel_crypto_priv {int flags; } ;
struct safexcel_ahash_req {int needs_inv; } ;
struct crypto_async_request {int dummy; } ;
struct ahash_request {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EIP197_TRC_CACHE ; 
 struct ahash_request* FUNC1 (struct crypto_async_request*) ; 
 struct safexcel_ahash_req* FUNC2 (struct ahash_request*) ; 
 int FUNC3 (struct safexcel_crypto_priv*,int,struct crypto_async_request*,int*,int*) ; 
 int FUNC4 (struct safexcel_crypto_priv*,int,struct crypto_async_request*,int*,int*) ; 

__attribute__((used)) static int FUNC5(struct safexcel_crypto_priv *priv, int ring,
				  struct crypto_async_request *async,
				  bool *should_complete, int *ret)
{
	struct ahash_request *areq = FUNC1(async);
	struct safexcel_ahash_req *req = FUNC2(areq);
	int err;

	FUNC0(!(priv->flags & EIP197_TRC_CACHE) && req->needs_inv);

	if (req->needs_inv) {
		req->needs_inv = false;
		err = FUNC3(priv, ring, async,
						 should_complete, ret);
	} else {
		err = FUNC4(priv, ring, async,
						 should_complete, ret);
	}

	return err;
}